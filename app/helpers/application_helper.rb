module ApplicationHelper

	def all_pages
  		@pages = PageContent.all
  		return @pages
	end

	def get_slides
		slides = Slide.all
		return slides
	end

	def get_lessons(page_content_id)
		lessons = Lesson.where(:page_content_id => page_content_id)
		return lessons
	end
end
