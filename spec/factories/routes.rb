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

    def rand_time(from, to=Time.now)
      Time.at(rand_in_range(from.to_f, to.to_f))
    end

    def rand_in_range(from, to)
      rand * (to - from) + from
    end
  end
end
