.class public Lcom/twitter/model/core/cg;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/core/cg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:I

.field public final c:Ljava/lang/String;

.field public final d:J

.field public final e:Ljava/lang/String;

.field public final f:I

.field public final g:Ljava/lang/String;

.field public final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/login/OneFactorEligibleFactor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 17
    new-instance v0, Lcom/twitter/model/core/ci;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/model/core/ci;-><init>(Lcom/twitter/model/core/ch;)V

    sput-object v0, Lcom/twitter/model/core/cg;->a:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;JLjava/lang/String;ILjava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "J",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/twitter/model/login/OneFactorEligibleFactor;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput p1, p0, Lcom/twitter/model/core/cg;->b:I

    .line 36
    iput-object p2, p0, Lcom/twitter/model/core/cg;->c:Ljava/lang/String;

    .line 37
    iput-wide p3, p0, Lcom/twitter/model/core/cg;->d:J

    .line 38
    iput-object p5, p0, Lcom/twitter/model/core/cg;->e:Ljava/lang/String;

    .line 39
    iput p6, p0, Lcom/twitter/model/core/cg;->f:I

    .line 40
    iput-object p7, p0, Lcom/twitter/model/core/cg;->g:Ljava/lang/String;

    .line 41
    iput-object p8, p0, Lcom/twitter/model/core/cg;->h:Ljava/util/List;

    .line 42
    return-void
.end method
