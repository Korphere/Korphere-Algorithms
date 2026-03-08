pub struct Queue {
    length: i32,
    queue: Vec<i32>,
}

impl Queue {
    fn new(queue: Vec<i32>) -> Self {
        Self {
            length: queue.len() as i32,
            queue,
        }
    }

    fn enqueue(&mut self, value: i32) {
        self.queue.push(value);
        self.length += 1;
    }

    fn dequeue(&mut self) -> Option<i32> {
        if self.length == 0 {
            None
        } else {
            self.length -= 1;
            Some(self.queue.remove(0))
        }
    }
}