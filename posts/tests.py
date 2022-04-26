from django.test import TestCase

from posts.models import Post


class PostTestCase(TestCase):
    def setUp(self):
        Post.objects.create(title="test-title")

    def test_failure(self):
        qs = Post.objects.all()
        self.assertEqual(qs.count(), 1)
