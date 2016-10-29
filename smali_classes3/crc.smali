.class public Lcrc;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcrc;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:J

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcrg;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 27
    new-instance v0, Lcrf;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcrf;-><init>(Lcrd;)V

    sput-object v0, Lcrc;->a:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method constructor <init>(Lcre;)V
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iget-object v0, p1, Lcre;->a:Ljava/lang/String;

    iput-object v0, p0, Lcrc;->b:Ljava/lang/String;

    .line 48
    invoke-static {p1}, Lcre;->a(Lcre;)J

    move-result-wide v0

    iput-wide v0, p0, Lcrc;->c:J

    .line 49
    invoke-static {p1}, Lcre;->b(Lcre;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/r;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcrc;->d:Ljava/util/List;

    .line 50
    invoke-static {p1}, Lcre;->c(Lcre;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/collection/r;->a(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcrc;->e:Ljava/util/List;

    .line 51
    invoke-static {p1}, Lcre;->d(Lcre;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcrc;->f:Ljava/lang/String;

    .line 52
    return-void
.end method
