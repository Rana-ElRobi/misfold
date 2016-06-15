class Disease < ActiveRecord::Base
	has_one :diseaseontology

	has_one :misfoldmodle, foreign_key: "diseaseid"
	has_one :protein, foreign_key: "diseaseid"
	has_one :organ, foreign_key: "diseaseid"
	has_one :omim, foreign_key: "diseaseid"
	has_and_belongs_to_many :references, foreign_key: "diseaseid"
	has_many :pathologies, foreign_key: "diseaseid"
end
