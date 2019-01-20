# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} t
# @return {String}

def tree2str(t)
    if t.nil?
        return ""
    end
    if t.left.nil? and t.right.nil?
        return "#{t.val}"
    end
    if t.right.nil?
        return "#{t.val}(#{tree2str(t.left)})"
    end
    "#{t.val}(#{tree2str(t.left)})(#{tree2str(t.right)})"
end
