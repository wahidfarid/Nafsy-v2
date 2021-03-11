require 'rails_helper'

RSpec.describe Point, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"

  describe ".new" do 
    it "is valid with appropriate information" do
      point = Point.new
      point.title = "Demo title 1"

      expect(point).to be_valid

      point = Point.new
      point.title = "Demo title 2"
      point.content = "<div>adfsgdhjgfdghgasdasd isaudhasiod uhudaof a<br><strong>sdafdsafasdf<br></strong><figure data-trix-attachment=\"{&quot;contentType&quot;:&quot;image/jpeg&quot;,&quot;filename&quot;:&quot;PXL_20201205_131939072-COLLAGE.jpg&quot;,&quot;filesize&quot;:831619,&quot;height&quot;:2048,&quot;sgid&quot;:&quot;BAh7CEkiCGdpZAY6BkVUSSIvZ2lkOi8vYXBwL0FjdGl2ZVN0b3JhZ2U6OkJsb2IvMj9leHBpcmVzX2luBjsAVEkiDHB1cnBvc2UGOwBUSSIPYXR0YWNoYWJsZQY7AFRJIg9leHBpcmVzX2F0BjsAVDA=--130800f10e6c4df13329f748207022a2decd0401&quot;,&quot;url&quot;:&quot;http://localhost:3000/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBCdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--81c1c68e5bf88ffae44e09a75467f88bbe5042e5/PXL_20201205_131939072-COLLAGE.jpg&quot;,&quot;width&quot;:2048}\" data-trix-content-type=\"image/jpeg\" data-trix-attributes=\"{&quot;presentation&quot;:&quot;gallery&quot;}\" class=\"attachment attachment--preview attachment--jpg\"><img src=\"http://localhost:3000/rails/active_storage/blobs/redirect/eyJfcmFpbHMiOnsibWVzc2FnZSI6IkJBaHBCdz09IiwiZXhwIjpudWxsLCJwdXIiOiJibG9iX2lkIn19--81c1c68e5bf88ffae44e09a75467f88bbe5042e5/PXL_20201205_131939072-COLLAGE.jpg\" width=\"2048\" height=\"2048\"><figcaption class=\"attachment__caption\"><span class=\"attachment__name\">PXL_20201205_131939072-COLLAGE.jpg</span> <span class=\"attachment__size\">812.13 KB</span></figcaption></figure></div>"

      expect(point).to be_valid
    end
  
    it "is not valid without a title" do
      point = Point.new(title: nil)
      expect(point).to_not be_valid
    end
  end

  describe ".links" do
    
    subject do
      Point.new(title: "Demo title 1")
    end

    it "can be linked with other points" do
      point = Point.new(title: "Demo title 2")
      subject.links << point
      expect(subject).to be_valid
    end
    it "can remove links with other points" do
      point = Point.new(title: "Demo title 2")
      subject.links << point
      expect(subject).to be_valid
      subject.links = nil
      expect(subject).to be_valid
    end
  end

  describe ".destroy" do 
    it "can be destroyed"
    it "will remove itself from linked points"
    it "will destroy attatched media in rich text content"
  end
end
