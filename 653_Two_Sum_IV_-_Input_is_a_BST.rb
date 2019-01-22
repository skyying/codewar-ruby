# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val)
#         @val = val
#         @left, @right = nil, nil
#     end
# end

# @param {TreeNode} root
# @param {Integer} k
# @return {Boolean}


def has_match root, k, node

  # treavese and find base on if current node's value is greater or lesser
  # than the target vaule, if target vlaue if greater, look up right node
  # otherwise, look its left node

  while root 
    return true if root.val == k and node != root
    if root.val < k
      root = root.right
    else
      root = root.left
    end
  end

  false

end

def find_target(root, k)

  return false if !root.nil? 
  current = root
  stack = [current]

  while stack.length > 0 or current do
     
    # push all left node
    while current
      stack.push(current)
      current = current.left
    end

    # pop lastest left node from stack
    current = stack.pop

    # send last left node and target number to has_match method to check
    return true if has_match root, k-current.val, current

    # treavese currnet's right node
    current = current.right
  end

  # if it doesn't match nay, return false
  return false

end


