class Point
    include ActiveGraph::Node
    # Properties
    property :title
    property :content, default: 'Insert content here'
    
    # Relations
    has_many :both, :links, type: :LINK, model_class: self, labels: false

    # Validations
    validates :title, presence: true
end