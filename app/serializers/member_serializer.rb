class MemberSerializer
  include JSONAPI::Serializer
  attributes :name, 
            :photo, 
            :allies, 
            :enemies, 
            :affiliations

end