describe "GIT" do
# describe "STAGING AND COMMITTING CHANGES:" do
  it "1. What is the syntax for staging a change in index.html if it is in the root dir?" do
    answer = "git add index.html"
    encoded_answer = "bf338924ddc9ff4eb0c685a794960e0c4ffade2c"
    expect(encode(answer)).to eq(encoded_answer)
  end

  it "2. What is the syntax for staging changes in every file, tracked and untracked, 
      assuming no previously staged files were deleted or renamed?" do
    answer = "git add ."
    encoded_answer = "1a1c76a81d0981b7fe181d7869d1ede4d1a2a24f"
    expect(encode(answer)).to eq(encoded_answer)
  end

  it "3. What is the syntax for staging changes in every file, tracked and untracked,
      if a previously staged and committed file has been deleted?" do
    answer = "git add --all"
    encoded_answers = ["e3ed0db138a439522bc6f0a56c71b2c90e3443db", "d43b64f144ca0689fea30adb6e5cb2150c971a0c"]
    expect(encode(answer)).to satisfy { |answer| encoded_answers.include?(answer) }
  end

  it "4. What is the syntax for committing all staged changes with the message 
      'update link styles'?" do
    answer = "git commit -m 'update link styles'"
    encoded_answer = "8d06e2760cda4755f387db0db0e6c425b2ece976"
    expect(encode(answer)).to eq(encoded_answer)
  end

  it "5. What command allows you to add all previously all tracked, modified files
      and create a mes sage, 'add img to index' for the commit in one command?" do
    answer = "git commit -am 'add img to index'"
    encoded_answer = "00565151beeb1fa3682d6386399eaf87b788a5bc"
    expect(encode(answer)).to eq(encoded_answer)
  end
# end

# describe "PUSHING:" do
  it "6. From the master branch, what is the syntax for pushing the master branch 
      to the remote master branch where the remote is called 'origin'?" do
    answer = "git push origin master"
    encoded_answer = "6c8e01a0360da3cf6e314c69c453957b70ab1b4e"
    expect(encode(answer)).to eq(encoded_answer)
  end

  it "7. From the feature branch 'add-links', what is the syntax for creating a 
      remote add-links branch with all of the local branch's content? 
      (remote is still called 'origin')" do
    answer = "git push origin add-links"
    encoded_answer = "07476403b56e1437e855a5d7031b3abc0b97de5a"
    expect(encode(answer)).to eq(encoded_answer)
  end

  it "8. From the master branch, what is the syntax for pushing the master branch to the 
      # remote master branch where the remote is called 'upstream'?" do
    answer = "git push upstream master"
    encoded_answer = "46e78005226efc7d1be2b4f9f26bcbdba2bf286d"
    expect(encode(answer)).to eq(encoded_answer)
  end

  it "9. From the feature branch 'add-image', what is the syntax for creating a remote
      add-image branch with all of the local branch's content? 
      (remote is still called 'upstream')" do
    answer = "git push upstream add-image"
    encoded_answer = "b0ce3fc84df6855995340cf16bce42f90ac9f9ab"
    expect(encode(answer)).to eq(encoded_answer)
  end
# end

# describe "FETCHING:" do
  it "10. What command do you run to update all branches from all remotes?" do
    answer = "git fetch --all"
    encoded_answer = "01e5711a6878a7ed0e4c0078870b772d0a58f510"
    expect(encode(answer)).to eq(encoded_answer)
  end

  it "11. Locally you have a master branch, remotely there is a master & add-nav-bar branch.
      You run 'git fetch --all'. 
      What command would you need to run to view and change 'add-nav-bar' branch locally?" do
    answer = "git checkout add-nav-bar"
    encoded_answer = "a510904cdd46be19a468be297076084d2ec5a5cf"
    expect(encode(answer)).to eq(encoded_answer)
  end

  it "12. What command do you run to update the local master branch with the 
      master branch on the remote 'upstream'?" do
    answer = "git fetch upstream master"
    encoded_answer = "10ce0782f27a2e126f7fe0f12dd189cc16578e26"
    expect(encode(answer)).to eq(encoded_answer)
  end
# end

# describe "PULLING:" do

  it "13. Is 'git pull' the same as running 'git fetch' followed by 'git merge'?" do
    # "true" or "false" in a string
    answer = "true" 
    
    encoded_answer = "5ffe533b830f08a0326348a9160afafc8ada44db"
    expect(encode(answer)).to eq(encoded_answer)
  end

  it "14. From the add-img branch, what command do you run to fetch and merge all the 
      changes from the add-img branch on the remote 'origin'?" do
    answer = "git pull origin add-img"
    encoded_answer = "96887ba3f8740e85c07e4ee6bebba55ad8c779d0"
    expect(encode(answer)).to eq(encoded_answer)
  end

  it "15. From the add-img branch, what command do you run to pull down all the changes 
      from the add-img branch on the remote 'upstream'?" do
    answer = "git pull upstream add-img"
    encoded_answer = "6c3209e77d80f4f76e692f6b7a9fb9be17068e3e"
    expect(encode(answer)).to eq(encoded_answer)
  end
# end

# describe "BRANCHING:" do
  it "16. What is the syntax for creating a new branch called 'style-image'?" do
    answer = "git branch style-image"
    encoded_answer = "a905f4cf88cdf57f8c406f2d5e7eb0acafe44c05"
    expect(encode(answer)).to eq(encoded_answer)
  end

  it "17. What is the syntax for switching to a branch called 'add-social-media-links'?" do
    answer = "git checkout add-social-media-links"
    encoded_answer = "1004b71629950e1efa0fe94f053b772b170d66b3"
    expect(encode(answer)).to eq(encoded_answer)
  end

  it "18. What is the syntax for switching to master from a feature branch called 
     'add-nav-bar'" do
    answer = "git checkout master"
    encoded_answer = "0899840db4703b45cc69576b6ec53615d552370d"
    expect(encode(answer)).to eq(encoded_answer)
  end

  it "19. What is the one line syntax for creating and switching to a branch called 
     'add-nav-bar'?" do
    answer = "git checkout -b add-nav-bar"
    encoded_answer = "f6317616a8601aeb64c0f27f71a4b7bf9e3b8453"
    expect(encode(answer)).to eq(encoded_answer)
  end

  it "20. 'git branch style-image' followed by 'git checkout style-image' 
      is the same as 'git checkout -b style-image'" do
    # "true" or "false", in a string
    answer = "true"

    encoded_answer = "5ffe533b830f08a0326348a9160afafc8ada44db"
    expect(encode(answer)).to eq(encoded_answer)
  end

  it "21. It is best practice to add a feature on the master branch" do
    # "true" or "false", in a string
    answer = "false"

    encoded_answer = "7cb6efb98ba5972a9b5090dc2e517fe14d12cb04"
    expect(encode(answer)).to eq(encoded_answer)
  end

  it "22. If you're working on a project on master and you create a new branch, 
      that branch will be empty until you add code" do
    # "true" or "false", in a string
    answer = "false"

    encoded_answer = "7cb6efb98ba5972a9b5090dc2e517fe14d12cb04"
    expect(encode(answer)).to eq(encoded_answer)
  end

  it "23. The branch that you are 'on' does not affect the content of a branch
      that you create: for instance, a branch made off of master will look exactly
      like a branch made off of `add-walrus-and-polar-bear`" do
    # "true" or "false", in a string
    answer = "false"

    encoded_answer = "7cb6efb98ba5972a9b5090dc2e517fe14d12cb04"
    expect(encode(answer)).to eq(encoded_answer)
  end
# end

# describe "MERGING:" do
  it '24. To merge a feature branch into master, you must first be on master' do
    # "true" or "false", in a string
    answer = "true"
    encoded_answer = "5ffe533b830f08a0326348a9160afafc8ada44db"
    expect(encode(answer)).to eq(encoded_answer)
  end

  it "25. What is the syntax for merging the local feature branch called 
      'update-color-scheme' into master, assuming you're already on master" do
    answer = "git merge update-color-scheme"
    encoded_answer = "38db6e269e805c09ea6c4bc4eb1bb83829e7504c"
    expect(encode(answer)).to eq(encoded_answer)
  end

  it "26. Merge conflicts are bad and always mean that you did something wrong" do
    # "true" or "false", in a string
    answer = "false"

    encoded_answer = "7cb6efb98ba5972a9b5090dc2e517fe14d12cb04"
    expect(encode(answer)).to eq(encoded_answer)
  end

  it "27. Once you've resolved merge conflicts, you must stage and commit the files
      in which there were conflicts" do
    # "true" or "false", in a string
    answer = "true"

    encoded_answer = "5ffe533b830f08a0326348a9160afafc8ada44db"
    expect(encode(answer)).to eq(encoded_answer)
  end
# end

# describe "DELETING BRANCHES:" do
  it "28. From master, what is the syntax for deleting a local branch called 
      'add-link'?" do
    answer = "git branch -d add-link"
    encoded_answer = "6f91ced397c25c02c099b56d71e11955ea660fa0"
    expect(encode(answer)).to eq(encoded_answer)
  end

  it "29. What is the syntax for deleting a branch called 'add-avatar' 
      on the remote 'origin' using the push and colon syntax?" do
    answer = "git push origin :add-avatar"
    encoded_answer = "7f9e982d2fe3ddabf95d835881a7efd6da387542"
    expect(encode(answer)).to eq(encoded_answer)
  end

  it "30. What is the syntax for deleting a remote branch called 'add-img' 
      on the remote 'butterfly' using the push and colon syntax?" do
    answer = "git push butterfly :add-img"
    encoded_answer = "9e528dd3bf4ed25f25b148bdc947566883ba785b"
    expect(encode(answer)).to eq(encoded_answer)
  end

# end

# describe "STATUS" do
  it "31. If index.html is being tracked and you modify it, but don't stage this change,
      what color will it be if you run 'git status'?" do
    answer = "red"
    encoded_answer = "78988010b890ce6f4d2136481f392787ec6d6106"
    expect(encode(answer)).to eq(encoded_answer)
  end

  it "33. If index.html is being tracked and you modify and stage the change,
      what color will it be if you run 'git status'?" do
    answer = "green"
    encoded_answer = "bc74f4f071a5a33f00ab88a6d6385b5e6638b86c"
    expect(encode(answer)).to eq(encoded_answer)
  end

  it "33. If index.html is being tracked and you modify, stage, and commit the change,
      what color (or shade) will the readout be if you run 'git status'?" do 
    answer = "white"
    encoded_answer = "528cef87d0bfb947548ab94679d1e5765f19089a"
    expect(encode(answer)).to eq(encoded_answer)
  end

  it "34. If you clone down a repo and make one change that you add and commit locally,
     assuming no one has pushed to your remote since you cloned it, will 'git status' say
     you're ahead or behind origin/master?" do
    # "ahead" or "behind" or "ahead and behind"
    answer = "ahead"
    encoded_answer = "a7481340412e5d73e6c5c8de4ef9285b85502d5a"
    expect(encode(answer)).to eq(encoded_answer)
  end

  it "35. If you clone down a repo at noon and don't touch it but three minues later, 
      someone else pushes two commits to it, will 'git status' say you are ahead or 
      behind when you run it at 12:05pm" do
    # "ahead" or "behind" or "ahead and behind"
    answer = "behind"
    encoded_answer = "fb6dbd81382d78f0f0633759a9c6033858e445b5"
    expect(encode(answer)).to eq(encoded_answer)
  end

  it "36. If you clone down a repo and make one change that you add and commit locally,
     and one developer has pushed to your remote since you cloned it, 
     will 'git status' say you're ahead or behind (or both) origin/master?" do
    # "ahead" or "behind" or "ahead and behind"
    answer = "ahead and behind"
    encoded_answer = "d81d22fb57ad5589d12d6363f4160b33232c3510"
    expect(encode(answer)).to eq(encoded_answer)
  end

end
