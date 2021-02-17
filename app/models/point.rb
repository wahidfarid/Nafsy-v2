class Point
    include ActiveGraph::Node

    property :title
    property :content, default: 'Insert content here'
end