.class public abstract Lcom/twitter/android/dm/widget/MessageBylineView;
.super Landroid/widget/RelativeLayout;
.source "Twttr"


# instance fields
.field final a:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 22
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/twitter/android/dm/widget/MessageBylineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 26
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/dm/widget/MessageBylineView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    invoke-virtual {p0}, Lcom/twitter/android/dm/widget/MessageBylineView;->getLayoutResId()I

    move-result v0

    invoke-static {p1, v0, p0}, Lcom/twitter/android/dm/widget/MessageBylineView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 32
    const v0, 0x7f1302ec

    invoke-virtual {p0, v0}, Lcom/twitter/android/dm/widget/MessageBylineView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/twitter/android/dm/widget/MessageBylineView;->a:Landroid/widget/TextView;

    .line 33
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-virtual {p0, p1, v0, p1, v0}, Lcom/twitter/android/dm/widget/MessageBylineView;->setPadding(IIII)V

    .line 41
    return-void
.end method

.method public a(II)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 44
    invoke-virtual {p0}, Lcom/twitter/android/dm/widget/MessageBylineView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 45
    invoke-virtual {v0, v1, p1, v1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 46
    invoke-virtual {p0, v0}, Lcom/twitter/android/dm/widget/MessageBylineView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 47
    return-void
.end method

.method public a(Z)V
    .locals 1

    .prologue
    .line 36
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/twitter/android/dm/widget/MessageBylineView;->setVisibility(I)V

    .line 37
    return-void

    .line 36
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method abstract getLayoutResId()I
    .annotation build Landroid/support/annotation/LayoutRes;
    .end annotation
.end method

.method public abstract setTimestampText(Ljava/lang/CharSequence;)V
.end method
