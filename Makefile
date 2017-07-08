start: .build-timestamps/env
	echo 'GET BACK TO WORK'

test: .build-timestamps/env
	bundle exec rspec

test-watch: .build-timestamps/env
	bundle exec guard

clean:
	rm -rf .build-timestamps tmp coverage

.build-timestamps/env: .build-timestamps
	bundle
	touch $@

.build-timestamps:
	mkdir .build-timestamps
	touch $@
