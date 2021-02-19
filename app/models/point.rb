class Point
    include ActiveGraph::Node

    # Properties
    property :title
    property :content, default: 'Insert content here'

    # Relations
    has_many :out, :links, type: :LINK, model_class: self, labels: false
end