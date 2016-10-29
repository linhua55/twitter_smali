.class public Lcom/twitter/model/topic/trends/a;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/topic/trends/a;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public c:J

.field public d:Lcom/twitter/model/topic/trends/d;

.field public e:Lcom/twitter/model/topic/trends/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    new-instance v0, Lcom/twitter/model/topic/trends/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/model/topic/trends/c;-><init>(Lcom/twitter/model/topic/trends/b;)V

    sput-object v0, Lcom/twitter/model/topic/trends/a;->a:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/util/List;JLcom/twitter/model/topic/trends/d;Lcom/twitter/model/topic/trends/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;J",
            "Lcom/twitter/model/topic/trends/d;",
            "Lcom/twitter/model/topic/trends/f;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/twitter/model/topic/trends/a;->b:Ljava/util/List;

    .line 35
    iput-wide p2, p0, Lcom/twitter/model/topic/trends/a;->c:J

    .line 36
    iput-object p4, p0, Lcom/twitter/model/topic/trends/a;->d:Lcom/twitter/model/topic/trends/d;

    .line 37
    iput-object p5, p0, Lcom/twitter/model/topic/trends/a;->e:Lcom/twitter/model/topic/trends/f;

    .line 38
    return-void
.end method
