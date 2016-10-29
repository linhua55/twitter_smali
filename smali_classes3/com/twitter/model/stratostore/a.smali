.class public Lcom/twitter/model/stratostore/a;
.super Lcom/twitter/model/stratostore/i;
.source "Twttr"


# static fields
.field private static final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/twitter/model/media/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/media/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/twitter/model/stratostore/b;->a:Ljava/util/Comparator;

    sput-object v0, Lcom/twitter/model/stratostore/a;->b:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/media/a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/twitter/model/stratostore/i;-><init>()V

    .line 18
    sget-object v0, Lcom/twitter/model/stratostore/a;->b:Ljava/util/Comparator;

    invoke-static {v0, p1}, Lcom/twitter/util/collection/r;->a(Ljava/util/Comparator;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/stratostore/a;->a:Ljava/util/List;

    .line 19
    return-void
.end method
