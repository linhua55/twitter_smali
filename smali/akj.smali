.class public Lakj;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lajf;


# instance fields
.field private final a:Lcom/twitter/ui/widget/ToggleTwitterButton;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 3

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 21
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040201

    const/4 v2, 0x0

    .line 22
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twitter/ui/widget/ToggleTwitterButton;

    iput-object v0, p0, Lakj;->a:Lcom/twitter/ui/widget/ToggleTwitterButton;

    .line 23
    return-void
.end method


# virtual methods
.method public a(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lakj;->a:Lcom/twitter/ui/widget/ToggleTwitterButton;

    invoke-virtual {v0, p1}, Lcom/twitter/ui/widget/ToggleTwitterButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    return-void
.end method

.method public a(ZZLjava/lang/CharSequence;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 37
    iget-object v2, p0, Lakj;->a:Lcom/twitter/ui/widget/ToggleTwitterButton;

    if-eqz p1, :cond_1

    const/16 v0, 0x8

    :goto_0
    invoke-virtual {v2, v0}, Lcom/twitter/ui/widget/ToggleTwitterButton;->setVisibility(I)V

    .line 38
    iget-object v0, p0, Lakj;->a:Lcom/twitter/ui/widget/ToggleTwitterButton;

    invoke-virtual {v0, p3}, Lcom/twitter/ui/widget/ToggleTwitterButton;->setText(Ljava/lang/CharSequence;)V

    .line 39
    iget-object v0, p0, Lakj;->a:Lcom/twitter/ui/widget/ToggleTwitterButton;

    if-nez p2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/ToggleTwitterButton;->setShowIcon(Z)V

    .line 40
    iget-object v0, p0, Lakj;->a:Lcom/twitter/ui/widget/ToggleTwitterButton;

    invoke-virtual {v0, p2}, Lcom/twitter/ui/widget/ToggleTwitterButton;->setToggledOn(Z)V

    .line 41
    return-void

    :cond_1
    move v0, v1

    .line 37
    goto :goto_0
.end method

.method public aK_()Landroid/view/View;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lakj;->a:Lcom/twitter/ui/widget/ToggleTwitterButton;

    return-object v0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lakj;->a:Lcom/twitter/ui/widget/ToggleTwitterButton;

    invoke-virtual {v0}, Lcom/twitter/ui/widget/ToggleTwitterButton;->e()Z

    move-result v0

    return v0
.end method
