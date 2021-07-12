require 'kafka'

kafka = Kafka.new(["localhost:9092"], client_id: "amdaris-rb")

producer = kafka.producer

# Add a message to the producer buffer.
producer.produce("hello1", topic: "topics")

# Deliver the messages to Kafka.
producer.deliver_messages
