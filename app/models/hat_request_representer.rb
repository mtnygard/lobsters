require 'roar/client'
require 'roar/decorator'
require 'roar/json'

module HatRequestRepresenter
    include Roar::JSON

    property :subject
    property :object
    collection :evidence
end

class HatRequestNew < OpenStruct
    include Roar::JSON
    include Roar::Client
    include HatRequestRepresenter
end
