.class Lcom/twitter/android/ke;
.super Lcom/twitter/ui/widget/s;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/model/core/am;


# direct methods
.method constructor <init>(Lcom/twitter/model/core/am;Landroid/content/res/Resources;)V
    .locals 9

    .prologue
    .line 503
    const v0, 0x7f120170

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    const v0, 0x7f12016c

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const v0, 0x7f0f02c5

    .line 504
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v3, v0

    const v0, 0x7f0f02c7

    .line 505
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v4, v0

    const v0, 0x7f0f02c9

    .line 507
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v5, v0

    const v0, 0x7f0f02c6

    .line 509
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v6, v0

    const/4 v7, 0x0

    const v0, 0x7f0f02c8

    .line 511
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v8, v0

    move-object v0, p0

    .line 503
    invoke-direct/range {v0 .. v8}, Lcom/twitter/ui/widget/s;-><init>(IIFFFFFF)V

    .line 512
    iput-object p1, p0, Lcom/twitter/android/ke;->a:Lcom/twitter/model/core/am;

    .line 513
    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/model/core/am;
    .locals 1

    .prologue
    .line 516
    iget-object v0, p0, Lcom/twitter/android/ke;->a:Lcom/twitter/model/core/am;

    return-object v0
.end method
