.class public Lakx;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lalk;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lalk",
        "<",
        "Lcom/twitter/model/moments/viewmodels/MomentPage;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lakw;


# direct methods
.method public constructor <init>(Lakw;)V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lakx;->a:Lakw;

    .line 19
    return-void
.end method


# virtual methods
.method public a(Lcom/twitter/model/moments/viewmodels/MomentPage;Lcom/twitter/model/core/Tweet;)V
    .locals 0

    .prologue
    .line 24
    return-void
.end method

.method public aK_()Landroid/view/View;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lakx;->a:Lakw;

    invoke-virtual {v0}, Lakw;->a()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public aX_()Lrx/w;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/w",
            "<",
            "Lalk",
            "<",
            "Lcom/twitter/model/moments/viewmodels/MomentPage;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 29
    invoke-static {p0}, Lrx/w;->a(Ljava/lang/Object;)Lrx/w;

    move-result-object v0

    return-object v0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 34
    return-void
.end method
