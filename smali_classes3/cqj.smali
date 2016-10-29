.class public Lcqj;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field public final a:Lcom/twitter/model/moments/s;

.field public final b:Lcom/twitter/model/moments/t;

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcqk;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Lcro;

.field public final e:Ljava/lang/String;

.field public final f:J


# direct methods
.method public constructor <init>(Lcom/twitter/model/moments/s;Lcom/twitter/model/moments/t;Ljava/util/List;Lcro;JLjava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/moments/s;",
            "Lcom/twitter/model/moments/t;",
            "Ljava/util/List",
            "<",
            "Lcqk;",
            ">;",
            "Lcro;",
            "J",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcqj;->a:Lcom/twitter/model/moments/s;

    .line 26
    iput-object p2, p0, Lcqj;->b:Lcom/twitter/model/moments/t;

    .line 27
    invoke-static {p3}, Lcom/twitter/util/collection/r;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcqj;->c:Ljava/util/List;

    .line 28
    iput-object p4, p0, Lcqj;->d:Lcro;

    .line 29
    iput-wide p5, p0, Lcqj;->f:J

    .line 30
    iput-object p7, p0, Lcqj;->e:Ljava/lang/String;

    .line 31
    return-void
.end method
