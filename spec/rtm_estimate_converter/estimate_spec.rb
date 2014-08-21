require "spec_helper"
describe String do
  describe "#estimate_time" do
    context "with minutes" do
      def times
        %w(1.5hours 1h30m 90min)
      end
      subject{ times.map(&:estimated_time) }
      it("全て5400sec(1時間半)に変換されること"){ should all eq(5400) }
    end
    context "with not time unit" do
      subject{ "1.5k" }
      it { expect{subject.estimated_time}.to raise_error }
    end
    context "with no unit" do
      subject{ "1.5" }
      it { expect{subject.estimated_time}.to raise_error }
    end
  end
end
