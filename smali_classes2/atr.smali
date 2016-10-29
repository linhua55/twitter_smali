.class Latr;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public a:Lcom/twitter/ui/widget/TwitterButton;

.field public b:Lcom/twitter/ui/widget/TwitterButton;


# direct methods
.method constructor <init>(Lcom/twitter/ui/widget/TwitterButton;Lcom/twitter/ui/widget/TwitterButton;)V
    .locals 0

    .prologue
    .line 356
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 357
    iput-object p1, p0, Latr;->a:Lcom/twitter/ui/widget/TwitterButton;

    .line 358
    iput-object p2, p0, Latr;->b:Lcom/twitter/ui/widget/TwitterButton;

    .line 359
    return-void
.end method


# virtual methods
.method a(Z)V
    .locals 4

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 362
    iget-object v3, p0, Latr;->a:Lcom/twitter/ui/widget/TwitterButton;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    .line 363
    iget-object v0, p0, Latr;->b:Lcom/twitter/ui/widget/TwitterButton;

    if-eqz p1, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/twitter/ui/widget/TwitterButton;->setVisibility(I)V

    .line 364
    return-void

    :cond_0
    move v0, v2

    .line 362
    goto :goto_0

    :cond_1
    move v2, v1

    .line 363
    goto :goto_1
.end method
