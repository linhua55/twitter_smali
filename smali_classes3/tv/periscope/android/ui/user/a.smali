.class public Ltv/periscope/android/ui/user/a;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Ltv/periscope/android/view/bf;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ltv/periscope/android/view/bf",
        "<",
        "Ltv/periscope/android/ui/user/c;",
        "Ltv/periscope/android/data/c;",
        ">;"
    }
.end annotation


# virtual methods
.method public bridge synthetic a(Landroid/support/v7/widget/RecyclerView$ViewHolder;Ljava/lang/Object;I)V
    .locals 0

    .prologue
    .line 10
    check-cast p1, Ltv/periscope/android/ui/user/c;

    check-cast p2, Ltv/periscope/android/data/c;

    invoke-virtual {p0, p1, p2, p3}, Ltv/periscope/android/ui/user/a;->a(Ltv/periscope/android/ui/user/c;Ltv/periscope/android/data/c;I)V

    return-void
.end method

.method public a(Ltv/periscope/android/ui/user/c;Ltv/periscope/android/data/c;I)V
    .locals 3

    .prologue
    .line 15
    iget-object v0, p1, Ltv/periscope/android/ui/user/c;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 16
    iget-object v1, p1, Ltv/periscope/android/ui/user/c;->a:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    sget-object v1, Ltv/periscope/android/ui/user/b;->a:[I

    iget-object v2, p2, Ltv/periscope/android/data/c;->a:Ltv/periscope/android/data/UserType;

    invoke-virtual {v2}, Ltv/periscope/android/data/UserType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 59
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Unsupported user type!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 19
    :pswitch_0
    iget-object v1, p1, Ltv/periscope/android/ui/user/c;->a:Landroid/widget/TextView;

    sget v2, Ltv/periscope/android/library/p;->ps__followers:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    :goto_0
    return-void

    .line 23
    :pswitch_1
    iget-object v1, p1, Ltv/periscope/android/ui/user/c;->a:Landroid/widget/TextView;

    sget v2, Ltv/periscope/android/library/p;->ps__following:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 27
    :pswitch_2
    iget-object v1, p1, Ltv/periscope/android/ui/user/c;->a:Landroid/widget/TextView;

    sget v2, Ltv/periscope/android/library/p;->ps__mutual_follow:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 31
    :pswitch_3
    iget-object v1, p1, Ltv/periscope/android/ui/user/c;->a:Landroid/widget/TextView;

    sget v2, Ltv/periscope/android/library/p;->ps__blocked:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 35
    :pswitch_4
    iget-object v1, p1, Ltv/periscope/android/ui/user/c;->a:Landroid/widget/TextView;

    sget v2, Ltv/periscope/android/library/p;->ps__featured_twitter:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 39
    :pswitch_5
    iget-object v1, p1, Ltv/periscope/android/ui/user/c;->a:Landroid/widget/TextView;

    sget v2, Ltv/periscope/android/library/p;->ps__featured_users:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 43
    :pswitch_6
    iget-object v1, p1, Ltv/periscope/android/ui/user/c;->a:Landroid/widget/TextView;

    sget v2, Ltv/periscope/android/library/p;->ps__featured_most_loved:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 47
    :pswitch_7
    iget-object v1, p1, Ltv/periscope/android/ui/user/c;->a:Landroid/widget/TextView;

    sget v2, Ltv/periscope/android/library/p;->ps__featured_popular:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 51
    :pswitch_8
    iget-object v1, p1, Ltv/periscope/android/ui/user/c;->a:Landroid/widget/TextView;

    sget v2, Ltv/periscope/android/library/p;->ps__featured_digits:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 55
    :pswitch_9
    iget-object v0, p1, Ltv/periscope/android/ui/user/c;->a:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 17
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
