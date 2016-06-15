require "rubygems"
#require "biomart"
class ProteinsController < ApplicationController
  before_action :set_protein, only: [:show, :edit, :update, :destroy]

  # GET /proteins
  # GET /proteins.json
  def index
    @proteins = Protein.all
  end

  # GET /proteins/1
  # GET /proteins/1.json
 
  def show
    

  end

  # GET /proteins/new
  def new
    @protein = Protein.new
  end

  # GET /proteins/1/edit
  def edit
  end

  # POST /proteins
  # POST /proteins.json
  def create
    @protein = Protein.new(protein_params)

    respond_to do |format|
      if @protein.save
        format.html { redirect_to @protein, notice: 'Protein was successfully created.' }
        format.json { render :show, status: :created, location: @protein }
      else
        format.html { render :new }
        format.json { render json: @protein.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /proteins/1
  # PATCH/PUT /proteins/1.json
  def update
    respond_to do |format|
      if @protein.update(protein_params)
        format.html { redirect_to @protein, notice: 'Protein was successfully updated.' }
        format.json { render :show, status: :ok, location: @protein }
      else
        format.html { render :edit }
        format.json { render json: @protein.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /proteins/1
  # DELETE /proteins/1.json
  def destroy
    @protein.destroy
    respond_to do |format|
      format.html { redirect_to proteins_url, notice: 'Protein was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  #In this function i will connect to Biomart API to get protin data
  # enter the database target in ensamble
  # write filters name => values
  # list the needed attributes
  # Discription is gene name
  # family_description is protein function
  
  def biomart
    biomartcon = Biomart::Server.new( "http://www.sanger.ac.uk/htgt/biomart" )

    @res = htgt.datasets["hsapiens_gene_ensembl"].search(
      :filters => {
        "uniprot_swissprot" => "P02671",
       
      },
      :attributes => [
        "entrezgene", "chromosome_name",
        "go_id", "name_1006" ,"pdb","hgnc_id",
        "refseq_mrna","refseq_peptide","protein_id",
        "description","family_description"
      ],
      :required_attributes => ["entrezgene"]
    )
  end

  #In this function we take the list of enteries (NCBI Ids)
  # resulted from biomart function
  # request gene name,gene sequence and protein sequence
  # Important Link
  # http://bioruby.org/rdoc/Bio/NCBI/REST/EFetch/Methods.html#method-i-sequence

  # for protein sequence 
  # protein(ids, format = "gp", hash = {})
  # Retrieve protein sequence entries by given IDs using E-Utils (efetch).
      #Arguments:
      ##ids: list of NCBI entry IDs (required)
      #format: “gp”, “gpc”, “fasta”, “acc”, “xml” etc.
      #Returns
      ##String
  # Arguments:
  # ids: list of NCBI entry IDs (required)
  # format: “gb”, “gbc”, “fasta”, “acc”, “xml” etc.
  # Returns :String

  # For Gene Sequence
  # nucleotide(ids, format = "gb", hash = {})
  # Retrieve nucleotide sequence entries by given IDs using E-Utils (efetch).
      #Arguments:
      ##ids: list of NCBI entry IDs (required)
      #format: “gp”, “gpc”, “fasta”, “acc”, “xml” etc.
      #Returns
      ##String

  # omim(ids, format = "detailed", hash = {})
  # Retrieve OMIM entries by given IDs using E-Utils (efetch).
      #Arguments:
      ##ids: list of NCBI entry IDs (required)
      #format: “gp”, “gpc”, “fasta”, “acc”, “xml” etc.
      #Returns
      ##String

  def ncbi
    #list of NCBI ids
    list = []
    ncbi = Bio::NCBI::REST::EFetch.new
    
    #to fetch gene sequence
    @gene = ncbi.nucleotide(list)

    #to fetch protein sequence
    @proteinseq = ncbi.protein(list)

    #to fetch omim data
    @omim = ncbi.omim(list)
  end

  #this function should return
  #input : KEGG ID
  #result : Pathway URL 
  #http://www.hpa-bioinformatics.org.uk/bioruby-api/classes/Bio/KEGG/API.html
  #Bio::KEGG::API#save_image(url, filename = nil)
  #Some methods of the KEGG API will return a URL of the generated image. 
  #This method save an image specified by the URL. 
  #The filename can be specified by its second argument, 
  #otherwise basename of the URL will be used.


  def kegg
    #ta2reban ncbi ids
    list = [gene_ids]
    #serv = Bio::KEGG::API.new
    #@pathways = serv.get_pathways_by_genes(list)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_protein
      @protein = Protein.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def protein_params
      params.require(:protein).permit(:uniprot_id, :name, :length, :sequence)
    end
end
