# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160615234131) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "conservedregions", force: :cascade do |t|
    t.string   "name"
    t.integer  "score"
    t.integer  "start"
    t.integer  "end"
    t.string   "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "diseasefamilies", force: :cascade do |t|
    t.string   "familyid"
    t.string   "familyname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "diseaseontologies", force: :cascade do |t|
    t.string   "doid"
    t.string   "name"
    t.string   "alt_id"
    t.string   "definition"
    t.string   "subset"
    t.string   "created_by"
    t.string   "creation_date"
    t.string   "url"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "diseases", force: :cascade do |t|
    t.string   "diseaseid"
    t.string   "icd10id"
    t.string   "pathogenesis"
    t.string   "clinicalpicture"
    t.string   "diseasename"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "diseasesubsets", force: :cascade do |t|
    t.string   "subset"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "diseasesynonyms", force: :cascade do |t|
    t.string   "synonym"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disjoint_froms", force: :cascade do |t|
    t.string   "disjointid"
    t.string   "name"
    t.string   "neighbors"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disjointneighbors", force: :cascade do |t|
    t.string   "neighbor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "disxrefs", force: :cascade do |t|
    t.string   "xref"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "externalsoforms", force: :cascade do |t|
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "functions", force: :cascade do |t|
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "genes", force: :cascade do |t|
    t.string   "name"
    t.string   "accesionno"
    t.text     "sequence"
    t.integer  "chromosomelocation"
    t.string   "url"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "goannotations", force: :cascade do |t|
    t.string   "annotate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "gos", force: :cascade do |t|
    t.string   "goid"
    t.string   "gourl"
    t.string   "godescription"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "intersection_ofs", force: :cascade do |t|
    t.string   "intersectionid"
    t.string   "name"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "intersectionneighbors", force: :cascade do |t|
    t.string   "neighbor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "is_adiseases", force: :cascade do |t|
    t.string   "isadiseaseid"
    t.string   "name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "is_aproteins", force: :cascade do |t|
    t.string   "isaproteinid"
    t.string   "name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "isadiseaseneighbors", force: :cascade do |t|
    t.string   "neighbor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "isaproneighbors", force: :cascade do |t|
    t.string   "neighbor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "keywords", force: :cascade do |t|
    t.string   "keyname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "misfoldmodles", force: :cascade do |t|
    t.integer  "misfoldid"
    t.string   "cause"
    t.string   "refseqm"
    t.string   "refseqp"
    t.string   "nuclutidechange"
    t.string   "molecularconsequence"
    t.string   "aminoacidechange"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "diseaseid"
  end

  create_table "omims", force: :cascade do |t|
    t.integer  "omimid"
    t.string   "omimurl"
    t.string   "moodofinheritnce"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
    t.integer  "diseaseid"
  end

  create_table "organs", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "diseaseid"
  end

  create_table "pathologies", force: :cascade do |t|
    t.string   "grosspicture"
    t.string   "microscopicpicture"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.integer  "diseaseid"
  end

  create_table "pathways", force: :cascade do |t|
    t.integer  "pathwayid"
    t.string   "pathwayurl"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pdbs", force: :cascade do |t|
    t.string   "pdbid"
    t.string   "name"
    t.string   "identificationmethod"
    t.string   "url"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "posttranslationalmodifications", force: :cascade do |t|
    t.string   "description"
    t.integer  "position"
    t.integer  "lenght"
    t.string   "featurekey"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "predictiontools", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "proteinnames", force: :cascade do |t|
    t.string   "name"
    t.string   "type"
    t.boolean  "isprimary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "proteinontologies", force: :cascade do |t|
    t.string   "prid"
    t.string   "name"
    t.string   "definition"
    t.string   "comment"
    t.string   "namespace"
    t.boolean  "is_obsolete"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "proteins", force: :cascade do |t|
    t.string   "uniprot_id"
    t.string   "name"
    t.integer  "length"
    t.text     "sequence"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "diseaseid"
  end

  create_table "references", force: :cascade do |t|
    t.integer  "referenceid"
    t.string   "title"
    t.string   "url"
    t.string   "retrievablereference"
    t.string   "clinicalreference"
    t.string   "otherresource"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "diseaseid"
  end

  create_table "relationshipneighbors", force: :cascade do |t|
    t.string   "neighbor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relationships", force: :cascade do |t|
    t.string   "relationshipid"
    t.string   "name"
    t.string   "type"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "siseasclasses", force: :cascade do |t|
    t.string   "diseasclass"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "synonymproteins", force: :cascade do |t|
    t.string   "synonymname"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "transcriptmodificationregions", force: :cascade do |t|
    t.integer  "start"
    t.integer  "end"
    t.string   "modification"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "transcripts", force: :cascade do |t|
    t.integer  "transcriptid"
    t.string   "name"
    t.boolean  "iscolonical"
    t.string   "sequence"
    t.string   "refrencesequence"
    t.string   "alternativename"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "twodstructureregions", force: :cascade do |t|
    t.integer  "start"
    t.integer  "end"
    t.string   "regiontype"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "typedefinitiondiseaseneighbors", force: :cascade do |t|
    t.string   "neighbor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "typedefinitiondiseases", force: :cascade do |t|
    t.string   "typedefinitiondiseaseid"
    t.string   "name"
    t.text     "definition"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "typedefinitionproteinneighbors", force: :cascade do |t|
    t.string   "neighbor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "typedefinitionproteins", force: :cascade do |t|
    t.string   "typedefinitionproteinid"
    t.string   "name"
    t.string   "synonym"
    t.string   "definition"
    t.string   "comment"
    t.boolean  "is_transitive"
    t.boolean  "is_obsolete"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "xrefproteins", force: :cascade do |t|
    t.string   "xrefname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
