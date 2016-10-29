.class Lcom/twitter/android/ol;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Landroid/widget/RadioGroup;

.field public final b:Landroid/widget/RadioButton;

.field public final c:Landroid/widget/RadioButton;

.field public final d:Landroid/widget/RadioButton;

.field public final e:Landroid/widget/RadioButton;

.field public final f:Landroid/widget/RadioButton;

.field public final g:Landroid/widget/RadioButton;

.field public final h:Landroid/widget/RadioGroup;

.field public final i:Landroid/widget/RadioButton;

.field public final j:Landroid/widget/RadioButton;

.field public final k:Landroid/widget/RadioGroup;

.field public final l:Landroid/widget/RadioButton;

.field public final m:Landroid/widget/RadioButton;

.field public final n:Landroid/view/View;

.field public final o:Landroid/view/View;

.field public final p:Landroid/view/View;

.field private final q:Landroid/widget/RadioGroup$OnCheckedChangeListener;


# direct methods
.method constructor <init>(Lcom/twitter/library/widget/SlidingPanel;Landroid/widget/RadioGroup$OnCheckedChangeListener;)V
    .locals 1

    .prologue
    .line 1613
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1614
    const v0, 0x7f13070f

    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/SlidingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/twitter/android/ol;->a:Landroid/widget/RadioGroup;

    .line 1615
    const v0, 0x7f130710

    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/SlidingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/twitter/android/ol;->b:Landroid/widget/RadioButton;

    .line 1616
    const v0, 0x7f130711

    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/SlidingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/twitter/android/ol;->c:Landroid/widget/RadioButton;

    .line 1617
    const v0, 0x7f130712

    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/SlidingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/twitter/android/ol;->d:Landroid/widget/RadioButton;

    .line 1618
    const v0, 0x7f130713

    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/SlidingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/twitter/android/ol;->e:Landroid/widget/RadioButton;

    .line 1619
    const v0, 0x7f130715

    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/SlidingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/twitter/android/ol;->f:Landroid/widget/RadioButton;

    .line 1620
    const v0, 0x7f130716

    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/SlidingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/twitter/android/ol;->g:Landroid/widget/RadioButton;

    .line 1622
    const v0, 0x7f130717

    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/SlidingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/twitter/android/ol;->h:Landroid/widget/RadioGroup;

    .line 1623
    const v0, 0x7f130718

    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/SlidingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/twitter/android/ol;->i:Landroid/widget/RadioButton;

    .line 1624
    const v0, 0x7f130719

    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/SlidingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/twitter/android/ol;->j:Landroid/widget/RadioButton;

    .line 1626
    const v0, 0x7f13071a

    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/SlidingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/twitter/android/ol;->k:Landroid/widget/RadioGroup;

    .line 1627
    const v0, 0x7f13071b

    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/SlidingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/twitter/android/ol;->l:Landroid/widget/RadioButton;

    .line 1628
    const v0, 0x7f13071c

    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/SlidingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/twitter/android/ol;->m:Landroid/widget/RadioButton;

    .line 1630
    const v0, 0x7f13071d

    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/SlidingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/ol;->n:Landroid/view/View;

    .line 1631
    const v0, 0x7f130720

    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/SlidingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/ol;->o:Landroid/view/View;

    .line 1632
    const v0, 0x7f13071f

    invoke-virtual {p1, v0}, Lcom/twitter/library/widget/SlidingPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/ol;->p:Landroid/view/View;

    .line 1634
    iget-object v0, p0, Lcom/twitter/android/ol;->a:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 1635
    iget-object v0, p0, Lcom/twitter/android/ol;->h:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 1636
    iget-object v0, p0, Lcom/twitter/android/ol;->k:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 1637
    iput-object p2, p0, Lcom/twitter/android/ol;->q:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    .line 1638
    return-void
.end method


# virtual methods
.method public a(IZZ)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 1641
    iget-object v0, p0, Lcom/twitter/android/ol;->a:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 1642
    iget-object v0, p0, Lcom/twitter/android/ol;->h:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 1643
    iget-object v0, p0, Lcom/twitter/android/ol;->k:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 1644
    packed-switch p1, :pswitch_data_0

    .line 1668
    :pswitch_0
    iget-object v0, p0, Lcom/twitter/android/ol;->b:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1673
    :goto_0
    if-eqz p2, :cond_0

    .line 1674
    iget-object v0, p0, Lcom/twitter/android/ol;->j:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1679
    :goto_1
    if-eqz p3, :cond_1

    .line 1680
    iget-object v0, p0, Lcom/twitter/android/ol;->m:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 1684
    :goto_2
    iget-object v0, p0, Lcom/twitter/android/ol;->a:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/twitter/android/ol;->q:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 1685
    iget-object v0, p0, Lcom/twitter/android/ol;->h:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/twitter/android/ol;->q:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 1686
    iget-object v0, p0, Lcom/twitter/android/ol;->k:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcom/twitter/android/ol;->q:Landroid/widget/RadioGroup$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 1687
    return-void

    .line 1646
    :pswitch_1
    iget-object v0, p0, Lcom/twitter/android/ol;->c:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 1651
    :pswitch_2
    iget-object v0, p0, Lcom/twitter/android/ol;->d:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 1656
    :pswitch_3
    iget-object v0, p0, Lcom/twitter/android/ol;->e:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 1660
    :pswitch_4
    iget-object v0, p0, Lcom/twitter/android/ol;->f:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 1664
    :pswitch_5
    iget-object v0, p0, Lcom/twitter/android/ol;->g:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    .line 1676
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/ol;->i:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_1

    .line 1682
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/ol;->l:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_2

    .line 1644
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public a(Z)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 1690
    if-eqz p1, :cond_1

    .line 1691
    iget-object v0, p0, Lcom/twitter/android/ol;->n:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1692
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    .line 1693
    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1694
    iget-object v0, p0, Lcom/twitter/android/ol;->h:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 1696
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/ol;->k:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 1697
    iget-object v0, p0, Lcom/twitter/android/ol;->o:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1698
    iget-object v0, p0, Lcom/twitter/android/ol;->p:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1706
    :goto_0
    return-void

    .line 1700
    :cond_1
    iget-object v0, p0, Lcom/twitter/android/ol;->n:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1701
    iget-object v0, p0, Lcom/twitter/android/ol;->h:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 1702
    iget-object v0, p0, Lcom/twitter/android/ol;->k:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->setVisibility(I)V

    .line 1703
    iget-object v0, p0, Lcom/twitter/android/ol;->o:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1704
    iget-object v0, p0, Lcom/twitter/android/ol;->p:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
