#require 'spec/factory_helper'

FactoryGirl.define do
  factory :route do
    sequence :passphrase do |n|
      "Kans4s-i$-g01ng-by3-bye#{n}"
    end

    sequence :source do |n|
      "sentinels, sniffers, loopholes#{n}"
    end

    sequence :start_node do |n|
      "alpha, beta, gamma, delta, theta, lambda, tau, psi, omega#{n}"
    end

    sequence :end_node do |n|
      "alpha, beta, gamma, delta, theta, lambda, tau, psi, omega#{n}"
    end

    sequence :start_time do |n|
      rand_time(n.days.ago)
    end

    sequence :end_time do |n|
      rand_time(start_time, Time.now + n.days)
    end

  end
end
