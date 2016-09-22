FactoryGirl.define do
  factory :vehicle do
    # hadi's note : manual default value
    # model 'Prius'
    # make  'Toyota'
    # year  2014
    # style 'Car'

    # hadi's note : generating random data in factories using ffaker
    model {FFaker::Vehicle.model}
    make  {FFaker::Vehicle.make}
    year  {FFaker::Vehicle.year}
    style 'Car'

    # hadi's note : generating random data in factories using ffaker - improvisation
    # model { FFaker::Vehicle.model }
    # make  { |vehicle| make_for_model(vehicle.model)  }

    # hadi's note : example of trait
    # simple excample of how to use it is build(:vehicle, :truck)
    # instead of build(:vehicle, model: 'F-150', make: 'Ford', style: 'Truck')
    trait :truck do
      model 'F-150'
      make  'Ford'
      style 'Truck'
    end

    trait :suv do
      model 'Escalade'
      make  'Cadilac'
      style 'SUV'
    end
  end
end
