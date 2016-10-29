.class public final Ltv/periscope/android/util/b;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Landroid/content/Context;Ldmy;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 22
    invoke-static {p3}, Ldod;->b(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 23
    invoke-interface {p1, p0, p3, p2}, Ldmy;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 30
    :goto_0
    return-void

    .line 25
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 26
    sget v1, Ltv/periscope/android/library/j;->ps__avatar_size:I

    .line 27
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    add-int/lit8 v2, p5, 0x1

    invoke-static {v2}, Ltv/periscope/android/util/s;->a(I)I

    move-result v2

    .line 26
    invoke-static {v0, v1, p4, v2}, Ltv/periscope/android/util/s;->a(Landroid/content/res/Resources;ILjava/lang/String;I)Ltv/periscope/android/view/bc;

    move-result-object v0

    .line 28
    invoke-interface {p1, p0, v0, p2}, Ldmy;->a(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Landroid/widget/ImageView;)V

    goto :goto_0
.end method
