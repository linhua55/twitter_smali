.class public Lxu;
.super Lxa;
.source "Twttr"


# instance fields
.field private final a:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lxa;-><init>(Landroid/view/View;)V

    .line 60
    const v0, 0x7f13006d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lxu;->a:Landroid/widget/TextView;

    .line 61
    return-void
.end method

.method static synthetic a(Lxu;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lxu;->a:Landroid/widget/TextView;

    return-object v0
.end method
