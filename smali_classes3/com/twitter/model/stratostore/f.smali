.class public Lcom/twitter/model/stratostore/f;
.super Lcom/twitter/model/stratostore/i;
.source "Twttr"


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcpb;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcpb;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/twitter/model/stratostore/i;-><init>()V

    .line 16
    iput-object p1, p0, Lcom/twitter/model/stratostore/f;->a:Ljava/util/List;

    .line 17
    return-void
.end method
