{literal}
<DIV id=dhtmltooltip></DIV>
<SCRIPT language=JavaScript>
<!--
function confirm_delete(delete_id)
{
if (confirm("������������� ������� ��� ���������")) {
parent.location.href = "index.php?mod=news&action=delete_kategor&id=" + delete_id;
}
}
-->
</SCRIPT>
<script language=JavaScript src='{/literal}{$base_url}{literal}/javascript/tooltips.js'></script>
{/literal}
  <table width=100% class=content_table>

  <tr><th>��������</th><th width=10%>��������</th><th width=10%>������</th><th width=15%>��������</th></tr>

  {foreach name=tree from=$news_list item=item key=key}

  {if $col==1}
  {assign var="td" value='td1'}
  {assign var="col" value=0}
  {else}
  {assign var="td" value='td2'}
  {assign var="col" value=1}
  {/if}
  <tr>
      <td class={$td}_left>

   		{if $item.parent_id!=0}

	        {str_repeat str="&nbsp;" num=$item.param_level mod="4"}<img src=templates/img/tree.gif>

         		{$item.name}

        	{if $item.properties>0} <small><font color="#666666">(�������: {$item.properties})</font></small>{/if}

       	{/if}

      </td>

      <td class={$td}_middle align=center>

        {if $item.news>0}<a href=index.php?mod=news&kat={$item.id}>[<b>{$item.news}</b>]</a>{/if}

      </td>

      <td align=center class={$td}_middle>

      {if $item.parent_id!=0}<a href="?mod=news&action=change_status&id={$item.id}" title="�������� ������"><img src=templates/img/status_{$item.status}.gif border=0></a>{/if}

      </td>

      <td align=center class={$td}_right nowrap>

        {if $item.parent_id!=0}<a href="javascript:confirm_delete('{$item.id}');" class=img_link onmouseover="ddrivetip('������� ���������')" onmouseout=hideddrivetip()><img src=templates/img/ico_delete.gif border=0></a>{/if}

        {if $item.parent_id==0}<a href=?mod=news&action=add_kat&parent={$item.id} class=img_link onmouseover="ddrivetip('�������� ���������')" onmouseout=hideddrivetip()><img src=templates/img/add_cat.gif border=0></a>{/if}

        {if $item.parent_id!=0}<a href=?mod=news&action=edit_kat&id={$item.id} class=img_link onmouseover="ddrivetip('������������� ���������')" onmouseout=hideddrivetip()><img src=templates/img/ico_edit.gif border=0></a>{/if}

        {if $item.parent_id!=0}<a href=?mod=news&action=kat_move_up&id={$item.id} class=img_link onmouseover="ddrivetip('����������� ��������� �����')" onmouseout=hideddrivetip()><img src=templates/img/ico_up.gif border=0></a><a href=?mod=news&action=kat_move_down&id={$item.id} class=img_link onmouseover="ddrivetip('����������� ��������� ����')" onmouseout=hideddrivetip()><img src=templates/img/ico_down.gif border=0></a>{/if}
      </td>
    </tr>

  {/foreach}

  </table>