FactoryBot.define do
  factory :pension_summary do
    trait :generated do
      generated_at { Time.current }
    end
  end

  factory :pension_summary_step_viewing, class: 'PensionSummary::StepViewing' do
    pension_summary
  end
end
