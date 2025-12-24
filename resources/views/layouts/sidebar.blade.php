  <div class="main-sidebar sidebar-style-2">
      <aside id="sidebar-wrapper">
          <div class="sidebar-brand">
              <a href="#">Welcome, Admin</a>
          </div>
          {{-- <div class="sidebar-brand sidebar-brand-sm">
                        <a href="index.html">St</a>
                    </div> --}}
          <ul class="sidebar-menu">
              <li class="menu-header">Dashboard</li>
              <li class="dropdown active">
                  <a href="{{ route('dashboard') }}" class="nav-link"><i class="fas fa-fire"></i><span>Dashboard</span></a>
                  {{-- <ul class="dropdown-menu">
                                <li><a class="nav-link" href="index-0.html">General Dashboard</a></li>
                                <li class=active><a class="nav-link" href="index.html">Ecommerce Dashboard</a></li>
                            </ul> --}}
              </li>
              <li class="dropdown">
                  <a href="#" class="nav-link has-dropdown"><i class="fas fa-envelope"></i>
                      <span>Messages</span></a>
                  <ul class="dropdown-menu">
                      <li><a class="nav-link" href={{ route('admin.contact_us.index') }}>Contact Us</a></li>
                      <li><a class="nav-link" href={{ route('admin.contact_form.index') }}>Contact Form</a></li>
                  </ul>
              </li>
              <li class="menu-header">Home</li>
              <li class="dropdown">
                  <a href="#" class="nav-link has-dropdown" data-toggle="dropdown"><i class="fas fa-columns"></i>
                      <span>Image Slider</span></a>
                  <ul class="dropdown-menu">
                      <li><a class="nav-link" href={{ route('admin.sliders.create') }}>Add</a></li>
                      <li><a class="nav-link" href={{ route('admin.sliders.index') }}>Manage</a></li>
                  </ul>
              </li>
              {{-- <li class="dropdown">
                  <a href="#" class="nav-link has-dropdown"><i class="fas fa-box"></i>
                      <span>Services</span></a>
                  <ul class="dropdown-menu">
                      <li><a class="nav-link" href="#">Add </a></li>
                      <li><a class="nav-link" href="#">Manage </a></li>
                  </ul>
              </li> --}}
              <li class="dropdown">
                  <a href="#" class="nav-link has-dropdown"><i class="fas fa-th"></i>
                      <span>Why Choose Us</span></a>
                  <ul class="dropdown-menu">
                      {{-- <li><a class="nav-link" href={{ route('admin.why_choose_us.create') }}>Add</a></li> --}}
                      <li><a class="nav-link" href={{ route('admin.why_choose_us.index') }}>Manage</a></li>
                  </ul>
              </li>
              <li class="dropdown">
                  <a href="#" class="nav-link has-dropdown"><i class="fas fa-handshake"></i>
                      <span>Partners</span></a>
                  <ul class="dropdown-menu">
                      <li><a class="nav-link" href={{ route('admin.partners.create') }}>Add</a></li>
                      <li><a class="nav-link" href={{ route('admin.partners.index') }}>Manage</a></li>
                  </ul>
              </li>
              <li class="dropdown">
                  <a href="#" class="nav-link has-dropdown"><i class="fas fa-comment-dots"></i>
                      <span>Review</span></a>
                  <ul class="dropdown-menu">
                      <li><a class="nav-link" href={{ route('admin.reviews.create') }}>Add</a></li>
                      <li><a class="nav-link" href={{ route('admin.reviews.index') }}>Manage</a></li>
                  </ul>
              </li>
              <li class="dropdown">
                  <a href="#" class="nav-link has-dropdown"><i class="fas fa-building"></i>
                      <span>Office</span></a>
                  <ul class="dropdown-menu">
                      <li><a class="nav-link" href={{ route('admin.offices.create') }}>Add</a></li>
                      <li><a class="nav-link" href={{ route('admin.offices.index') }}>Manage</a></li>
                  </ul>
              </li>

              <li class="dropdown">
                  <a href="#" class="nav-link has-dropdown"><i class="fas fa-question-circle"></i>
                      <span>FAQ</span></a>
                  <ul class="dropdown-menu">
                      <li><a class="nav-link" href={{ route('admin.faqs.create') }}>Add</a></li>
                      <li><a class="nav-link" href={{ route('admin.faqs.index') }}>Manage</a></li>
                  </ul>
              </li>
              <li class="dropdown">
                  <a href="#" class="nav-link has-dropdown"><i class="fas fa-shield-alt"></i>
                      <span>Privacy Policy</span></a>
                  <ul class="dropdown-menu">
                      <li><a class="nav-link" href={{ route('admin.privacy_policies.create') }}>Add</a></li>
                      <li><a class="nav-link" href={{ route('admin.privacy_policies.index') }}>Manage</a></li>
                  </ul>
              </li>
              <li class="dropdown">
                  <a href="#" class="nav-link has-dropdown"><i class="fas fa-file-contract"></i>
                      <span>Terms Condition</span></a>
                  <ul class="dropdown-menu">
                      <li><a class="nav-link" href={{ route('admin.terms_conditions.create') }}>Add</a></li>
                      <li><a class="nav-link" href={{ route('admin.terms_conditions.index') }}>Manage</a></li>
                  </ul>
              </li>
              <li class="menu-header">Destination</li>
              <li class="dropdown">
                  <a href="#" class="nav-link has-dropdown">
                      <i class="fas fa-plane"></i>
                      <span>Destination</span>
                  </a>
                  <ul class="dropdown-menu">
                      <li class="dropdown">
                          <a href="#" class="has-dropdown">Destination</a>
                          <ul class="dropdown-menu">
                              <li><a class="nav-link" href="{{ route('admin.destinations.create') }}">Add
                                  </a></li>
                              <li><a class="nav-link" href="{{ route('admin.destinations.index') }}">Manage
                                  </a></li>
                          </ul>
                      </li>
                      <li class="dropdown">
                          <a href="#" class="has-dropdown">Destination Items</a>
                          <ul class="dropdown-menu">
                              <li><a class="nav-link" href="{{ route('admin.destination_items.create') }}">Add </a>
                              </li>
                              <li><a class="nav-link" href="{{ route('admin.destination_items.index') }}">Manage
                                  </a></li>
                          </ul>
                      </li>
                      <li class="dropdown">
                          <a href="#" class="has-dropdown">Item Sections</a>
                          <ul class="dropdown-menu">
                              <li><a class="nav-link" href="{{ route('admin.destination_item_sections.create') }}">Add
                                  </a></li>
                              <li><a class="nav-link"
                                      href="{{ route('admin.destination_item_sections.index') }}">Manage </a>
                              </li>
                          </ul>
                      </li>
                  </ul>
              </li>

              <li class="menu-header">Scholarship</li>
              <li class="dropdown">
                  <a href="#" class="nav-link has-dropdown">
                      <i class="fas fa-graduation-cap"></i>
                      <span>Scholarship</span>
                  </a>
                  <ul class="dropdown-menu">
                      <li class="dropdown">
                          <a href="#" class="has-dropdown">Scholarship</a>
                          <ul class="dropdown-menu">
                              <li><a class="nav-link" href="{{ route('admin.scholarships.create') }}">Add
                                  </a></li>
                              <li><a class="nav-link" href="{{ route('admin.scholarships.index') }}">Manage
                                  </a></li>
                          </ul>
                      </li>
                      <li class="dropdown">
                          <a href="#" class="has-dropdown">Scholarship Items</a>
                          <ul class="dropdown-menu">
                              <li><a class="nav-link" href="{{ route('admin.scholarship_items.create') }}">Add </a>
                              </li>
                              <li><a class="nav-link" href="{{ route('admin.scholarship_items.index') }}">Manage
                                  </a></li>
                          </ul>
                      </li>
                      <li class="dropdown">
                          <a href="#" class="has-dropdown">Item Sections</a>
                          <ul class="dropdown-menu">
                              <li><a class="nav-link"
                                      href="{{ route('admin.scholarship_item_sections.create') }}">Add
                                  </a></li>
                              <li><a class="nav-link"
                                      href="{{ route('admin.scholarship_item_sections.index') }}">Manage </a>
                              </li>
                          </ul>
                      </li>
                  </ul>
              </li>
              <li class="menu-header">Services</li>
              <li class="dropdown">
                  <a href="#" class="nav-link has-dropdown"><i class="fas fa-graduation-cap"></i>
                      <span>Admission Support</span></a>
                  <ul class="dropdown-menu">
                      {{-- <li class="dropdown">
                          <a href="#" class="has-dropdown">Admission</a>
                          <ul class="dropdown-menu">
                              <li><a class="nav-link" href="{{ route('admin.admissions.create') }}">Add
                                  </a></li>
                              <li><a class="nav-link" href="{{ route('admin.admissions.index') }}">Manage
                                  </a></li>
                          </ul>
                      </li> --}}
                      <li class="dropdown">
                          <a href="#" class="has-dropdown">Admission Items</a>
                          <ul class="dropdown-menu">
                              <li><a class="nav-link" href="{{ route('admin.admission_items.create') }}">Add </a>
                              </li>
                              <li><a class="nav-link" href="{{ route('admin.admission_items.index') }}">Manage
                                  </a></li>
                          </ul>
                      </li>
                      <li class="dropdown">
                          <a href="#" class="has-dropdown">Item Sections</a>
                          <ul class="dropdown-menu">
                              <li><a class="nav-link" href="{{ route('admin.admission_item_sections.create') }}">Add
                                  </a></li>
                              <li><a class="nav-link"
                                      href="{{ route('admin.admission_item_sections.index') }}">Manage </a>
                              </li>
                          </ul>
                      </li>
                  </ul>
              </li>
              <li class="dropdown">
                  <a href="#" class="nav-link has-dropdown"><i class="fas fa-briefcase-medical"></i>
                      <span>Health Insurance</span></a>
                  <ul class="dropdown-menu">
                      {{-- <li class="dropdown">
                          <a href="#" class="has-dropdown">Health</a>
                          <ul class="dropdown-menu">
                              <li><a class="nav-link" href="{{ route('admin.healths.create') }}">Add
                                  </a></li>
                              <li><a class="nav-link" href="{{ route('admin.healths.index') }}">Manage
                                  </a></li>
                          </ul>
                      </li> --}}
                      <li class="dropdown">
                          <a href="#" class="has-dropdown">Health Items</a>
                          <ul class="dropdown-menu">
                              <li><a class="nav-link" href="{{ route('admin.health_items.create') }}">Add </a>
                              </li>
                              <li><a class="nav-link" href="{{ route('admin.health_items.index') }}">Manage
                                  </a></li>
                          </ul>
                      </li>
                      <li class="dropdown">
                          <a href="#" class="has-dropdown">Item Sections</a>
                          <ul class="dropdown-menu">
                              <li><a class="nav-link" href="{{ route('admin.health_item_sections.create') }}">Add
                                  </a></li>
                              <li><a class="nav-link" href="{{ route('admin.health_item_sections.index') }}">Manage
                                  </a>
                              </li>
                          </ul>
                      </li>
                  </ul>
              </li>
              <li class="dropdown">
                  <a href="#" class="nav-link has-dropdown"><i class="fas fa-home"></i>
                      <span>Std. Accommodation</span></a>
                  <ul class="dropdown-menu">
                      {{-- <li class="dropdown">
                          <a href="#" class="has-dropdown">Accommodation</a>
                          <ul class="dropdown-menu">
                              <li><a class="nav-link" href="{{ route('admin.accommodations.create') }}">Add
                                  </a></li>
                              <li><a class="nav-link" href="{{ route('admin.accommodations.index') }}">Manage
                                  </a></li>
                          </ul> --}}
              </li>
              <li class="dropdown">
                  <a href="#" class="has-dropdown"> Items</a>
                  <ul class="dropdown-menu">
                      <li><a class="nav-link" href="{{ route('admin.accommodation_items.create') }}">Add </a>
                      </li>
                      <li><a class="nav-link" href="{{ route('admin.accommodation_items.index') }}">Manage
                          </a></li>
                  </ul>
              </li>
              <li class="dropdown">
                  <a href="#" class="has-dropdown">Item Sections</a>
                  <ul class="dropdown-menu">
                      <li><a class="nav-link" href="{{ route('admin.accommodation_item_sections.create') }}">Add
                          </a></li>
                      <li><a class="nav-link" href="{{ route('admin.accommodation_item_sections.index') }}">Manage
                          </a>
                      </li>
                  </ul>
              </li>
          </ul>
          </li>
          <li class="dropdown">
              <a href="#" class="nav-link has-dropdown"><i class="fas fa-passport"></i>
                  <span>Visa Service</span></a>
              <ul class="dropdown-menu">
                  {{-- <li class="dropdown">
                      <a href="#" class="has-dropdown">Visa</a>
                      <ul class="dropdown-menu">
                          <li><a class="nav-link" href="{{ route('admin.visas.create') }}">Add
                              </a></li>
                          <li><a class="nav-link" href="{{ route('admin.visas.index') }}">Manage
                              </a></li>
                      </ul>
                  </li> --}}
                  <li class="dropdown">
                      <a href="#" class="has-dropdown">Visa Items</a>
                      <ul class="dropdown-menu">
                          <li><a class="nav-link" href="{{ route('admin.visa_items.create') }}">Add </a>
                          </li>
                          <li><a class="nav-link" href="{{ route('admin.visa_items.index') }}">Manage
                              </a></li>
                      </ul>
                  </li>
                  <li class="dropdown">
                      <a href="#" class="has-dropdown">Item Sections</a>
                      <ul class="dropdown-menu">
                          <li><a class="nav-link" href="{{ route('admin.visa_item_sections.create') }}">Add
                              </a></li>
                          <li><a class="nav-link" href="{{ route('admin.visa_item_sections.index') }}">Manage
                              </a>
                          </li>
                      </ul>
                  </li>
              </ul>
          </li>
          <li class="menu-header">About Us</li>
          <li class="dropdown">
              <a href="#" class="nav-link has-dropdown"><i class="fas fa-trophy"></i>
                  <span>Achievements</span></a>
              <ul class="dropdown-menu">
                  <li><a class="nav-link" href={{ route('admin.achievements.create') }}>Add</a></li>
                  <li><a class="nav-link" href={{ route('admin.achievements.index') }}>Manage</a></li>
              </ul>
          </li>
          <li class="dropdown">
              <a href="#" class="nav-link has-dropdown"><i class="fas fa-users"></i>
                  <span>Team</span></a>
              <ul class="dropdown-menu">
                  <li><a class="nav-link" href={{ route('admin.teams.create') }}>Add</a></li>
                  <li><a class="nav-link" href={{ route('admin.teams.index') }}>Manage</a></li>
              </ul>
          </li>
          <li class="dropdown">
              <a href="#" class="nav-link has-dropdown"><i class="fas fa-quote-left"></i>
                  <span>Testimonial</span></a>
              <ul class="dropdown-menu">
                  <li><a class="nav-link" href={{ route('admin.testimonials.create') }}>Add</a></li>
                  <li><a class="nav-link" href={{ route('admin.testimonials.index') }}>Manage</a></li>
              </ul>
          </li>
          <li class="menu-header">Resources</li>
          <li class="dropdown">
              <a href="#" class="nav-link has-dropdown"><i class="fas fa-pencil-alt"></i>
                  <span>Blogs</span></a>
              <ul class="dropdown-menu">
                  <li><a class="nav-link" href={{ route('admin.blogs.create') }}>Add</a></li>
                  <li><a class="nav-link" href={{ route('admin.blogs.index') }}>Manage</a></li>
              </ul>
          </li>
          <li class="dropdown">
              <a href="#" class="nav-link has-dropdown">
                  <i class="fas fa-calendar"></i>
                  <span>Events</span>
              </a>
              <ul class="dropdown-menu">
                  <li class="dropdown">
                      <a href="#" class="has-dropdown">Event</a>
                      <ul class="dropdown-menu">
                          <li><a class="nav-link" href="{{ route('admin.events.create') }}">Add
                              </a></li>
                          <li><a class="nav-link" href="{{ route('admin.events.index') }}">Manage
                              </a></li>
                      </ul>
                  </li>
                  <li class="dropdown">
                      <a href="#" class="has-dropdown">Event Items</a>
                      <ul class="dropdown-menu">
                          <li><a class="nav-link" href="{{ route('admin.event_items.create') }}">Add </a>
                          </li>
                          <li><a class="nav-link" href="{{ route('admin.event_items.index') }}">Manage
                              </a></li>
                      </ul>
                  </li>
                  <li class="dropdown">
                      <a href="#" class="has-dropdown">Item Sections</a>
                      <ul class="dropdown-menu">
                          <li><a class="nav-link" href="{{ route('admin.event_item_sections.create') }}">Add
                              </a></li>
                          <li><a class="nav-link" href="{{ route('admin.event_item_sections.index') }}">Manage
                              </a>
                          </li>
                      </ul>
                  </li>
              </ul>
          <li class="dropdown">
              <a href="#" class="nav-link has-dropdown">
                  <i class="fas fa-book"></i>
                  <span>Abouts</span>
              </a>
              <ul class="dropdown-menu">
                  <li class="dropdown">
                      <a href="#" class="has-dropdown">About</a>
                      <ul class="dropdown-menu">
                          <li><a class="nav-link" href="{{ route('admin.abouts.create') }}">Add
                              </a></li>
                          <li><a class="nav-link" href="{{ route('admin.abouts.index') }}">Manage
                              </a></li>
                      </ul>
                  </li>
                  <li class="dropdown">
                      <a href="#" class="has-dropdown">About Items</a>
                      <ul class="dropdown-menu">
                          <li><a class="nav-link" href="{{ route('admin.about_items.create') }}">Add </a>
                          </li>
                          <li><a class="nav-link" href="{{ route('admin.about_items.index') }}">Manage
                              </a></li>
                      </ul>
                  </li>

              </ul>
              </ul>
              <div class="sidebar-brand">
                  <a href="#"></a>
              </div>
      </aside>
  </div>
