require "spec_helper"

describe Container do
  describe "Deque" do
    before do
      @my_deque = Container::PivotDeque.new(0,5)
      @my_deque.push_front(12)
      @my_deque.push_front(11)
      @my_deque.push_front(10)
      @my_deque.push_back(13)
      @my_deque.push_back(14)
      @my_deque.push_back(15)
    end

    it "should be able to push" do
      @my_deque[0].should == 10
    end

    it "should keep track of pivot" do
      @my_deque.pivot_index().should == 3
    end

    it "should get bottom array(less than pivot)" do
      @my_deque.bottom_array().should == [10,11,12]
    end 

    it "should get top array(greater than pivot)" do
      @my_deque.top_array().should == [13,14,15]
    end

    it "should get pivot value" do
      @my_deque.pivot_value.should == 5
    end

  end
end
