<h3>{$title_section}</h3>

<div class="pagemcontainer" {*style="background-color: #D6E4C5; border: 1px solid #BDD3A3; "*}>{$gallery_status}</div>

{$form_start}
<div class="pageoverflow">
    <p class="pagetext">{$gallery_path_title}:</p>
    <p class="pageinput">{$gallery_path}</p>
</div>

<div class="pageoverflow">
    <p class="pagetext">{$gallery_url_title}:</p>
    <p class="pageinput">{$gallery_url}</p>
</div>


<div>
{$submit}
{$cancel}
</div>
{$form_end}