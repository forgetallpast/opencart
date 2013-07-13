<?php echo $header; ?>
<ul class="breadcrumb">
  <?php foreach ($breadcrumbs as $breadcrumb) { ?>
  <li><a href="<?php echo $breadcrumb['href']; ?>"> <?php echo $breadcrumb['text']; ?></a></li>
  <?php } ?>
</ul>
<div class="row"><?php echo $column_left; ?>
  <div id="content" class="span9"><?php echo $content_top; ?>
    <h1><?php echo $heading_title; ?></h1>
    <p><?php echo $text_total; ?><b> <?php echo $total; ?></b>.</p>
    <table class="table table-bordered table-hover return-list">
      <thead>
        <tr>
          <td><?php echo $column_date_added; ?></td>
          <td><?php echo $column_description; ?></td>
          <td><?php echo $column_amount; ?></td>
        </tr>
      </thead>
      <tbody>
        <?php if ($transactions) { ?>
        <?php foreach ($transactions  as $transaction) { ?>
        <tr>
          <td><?php echo $transaction['date_added']; ?></td>
          <td><?php echo $transaction['description']; ?></td>
          <td><?php echo $transaction['amount']; ?></td>
        </tr>
        <?php } ?>
        <?php } else { ?>
        <tr>
          <td colspan="5"><?php echo $text_empty; ?></td>
        </tr>
        <?php } ?>
      </tbody>
    </table>
    <div class="pagination"><?php echo $pagination; ?></div>
    <div class="buttons clearfix">
      <div class="pull-right"><a href="<?php echo $continue; ?>" class="btn btn-primary"><?php echo $button_continue; ?></a></div>
    </div>
    <?php echo $content_bottom; ?></div>
  <?php echo $column_right; ?></div>
<?php echo $footer; ?>