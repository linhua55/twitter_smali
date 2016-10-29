.class public Lcom/twitter/model/core/bv;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/core/bv;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/twitter/model/core/bv;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:Lcom/twitter/model/core/EscherbirdAnnotation;

.field public final d:Lcom/twitter/model/core/bz;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcom/twitter/model/core/by;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/model/core/by;-><init>(Lcom/twitter/model/core/bw;)V

    sput-object v0, Lcom/twitter/model/core/bv;->a:Lcom/twitter/util/serialization/ah;

    .line 17
    new-instance v0, Lcom/twitter/model/core/bx;

    invoke-direct {v0}, Lcom/twitter/model/core/bx;-><init>()V

    sput-object v0, Lcom/twitter/model/core/bv;->b:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Lcom/twitter/model/core/EscherbirdAnnotation;Lcom/twitter/model/core/bz;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/twitter/model/core/bv;->c:Lcom/twitter/model/core/EscherbirdAnnotation;

    .line 26
    iput-object p2, p0, Lcom/twitter/model/core/bv;->d:Lcom/twitter/model/core/bz;

    .line 27
    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/twitter/model/core/bv;->c:Lcom/twitter/model/core/EscherbirdAnnotation;

    iget-object v0, v0, Lcom/twitter/model/core/EscherbirdAnnotation;->c:Lcom/twitter/model/core/EscherbirdAnnotation$DomainType;

    invoke-virtual {v0}, Lcom/twitter/model/core/EscherbirdAnnotation$DomainType;->a()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b()J
    .locals 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/twitter/model/core/bv;->c:Lcom/twitter/model/core/EscherbirdAnnotation;

    iget-wide v0, v0, Lcom/twitter/model/core/EscherbirdAnnotation;->d:J

    return-wide v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/twitter/model/core/bv;->d:Lcom/twitter/model/core/bz;

    iget-object v0, v0, Lcom/twitter/model/core/bz;->b:Ljava/lang/String;

    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/twitter/model/core/bv;->d:Lcom/twitter/model/core/bz;

    iget-object v0, v0, Lcom/twitter/model/core/bz;->c:Ljava/lang/String;

    return-object v0
.end method
