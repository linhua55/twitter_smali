.class public abstract Lcom/twitter/model/dms/b;
.super Lcom/twitter/model/dms/g;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/twitter/model/dms/g;"
    }
.end annotation


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/dms/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Z

.field public final c:Z

.field private final g:J

.field private final h:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 23
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/twitter/util/serialization/af;

    const/4 v1, 0x0

    const-class v2, Lcom/twitter/model/dms/ag;

    new-instance v3, Lcom/twitter/model/dms/aj;

    invoke-direct {v3}, Lcom/twitter/model/dms/aj;-><init>()V

    .line 25
    invoke-static {v2, v3}, Lcom/twitter/util/serialization/af;->a(Ljava/lang/Class;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/af;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Lcom/twitter/model/dms/cz;

    new-instance v3, Lcom/twitter/model/dms/dc;

    invoke-direct {v3}, Lcom/twitter/model/dms/dc;-><init>()V

    .line 27
    invoke-static {v2, v3}, Lcom/twitter/util/serialization/af;->a(Ljava/lang/Class;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/af;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-class v2, Lcom/twitter/model/dms/ea;

    new-instance v3, Lcom/twitter/model/dms/ed;

    invoke-direct {v3}, Lcom/twitter/model/dms/ed;-><init>()V

    .line 29
    invoke-static {v2, v3}, Lcom/twitter/util/serialization/af;->a(Ljava/lang/Class;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/af;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-class v2, Lcom/twitter/model/dms/eh;

    new-instance v3, Lcom/twitter/model/dms/ek;

    invoke-direct {v3}, Lcom/twitter/model/dms/ek;-><init>()V

    .line 31
    invoke-static {v2, v3}, Lcom/twitter/util/serialization/af;->a(Ljava/lang/Class;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/af;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-class v2, Lcom/twitter/model/dms/eo;

    new-instance v3, Lcom/twitter/model/dms/er;

    invoke-direct {v3}, Lcom/twitter/model/dms/er;-><init>()V

    .line 33
    invoke-static {v2, v3}, Lcom/twitter/util/serialization/af;->a(Ljava/lang/Class;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/af;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-class v2, Lcom/twitter/model/dms/bo;

    new-instance v3, Lcom/twitter/model/dms/bt;

    invoke-direct {v3}, Lcom/twitter/model/dms/bt;-><init>()V

    .line 35
    invoke-static {v2, v3}, Lcom/twitter/util/serialization/af;->a(Ljava/lang/Class;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/af;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-class v2, Lcom/twitter/model/dms/bd;

    new-instance v3, Lcom/twitter/model/dms/bg;

    invoke-direct {v3}, Lcom/twitter/model/dms/bg;-><init>()V

    .line 37
    invoke-static {v2, v3}, Lcom/twitter/util/serialization/af;->a(Ljava/lang/Class;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/af;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-class v2, Lcom/twitter/model/dms/dp;

    new-instance v3, Lcom/twitter/model/dms/dv;

    invoke-direct {v3}, Lcom/twitter/model/dms/dv;-><init>()V

    .line 39
    invoke-static {v2, v3}, Lcom/twitter/util/serialization/af;->a(Ljava/lang/Class;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/af;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-class v2, Lcom/twitter/model/dms/dw;

    new-instance v3, Lcom/twitter/model/dms/dz;

    invoke-direct {v3}, Lcom/twitter/model/dms/dz;-><init>()V

    .line 41
    invoke-static {v2, v3}, Lcom/twitter/util/serialization/af;->a(Ljava/lang/Class;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/af;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-class v2, Lcom/twitter/model/dms/z;

    new-instance v3, Lcom/twitter/model/dms/ac;

    invoke-direct {v3}, Lcom/twitter/model/dms/ac;-><init>()V

    .line 43
    invoke-static {v2, v3}, Lcom/twitter/util/serialization/af;->a(Ljava/lang/Class;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/af;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-class v2, Lcom/twitter/model/dms/s;

    new-instance v3, Lcom/twitter/model/dms/v;

    invoke-direct {v3}, Lcom/twitter/model/dms/v;-><init>()V

    .line 45
    invoke-static {v2, v3}, Lcom/twitter/util/serialization/af;->a(Ljava/lang/Class;Lcom/twitter/util/serialization/ah;)Lcom/twitter/util/serialization/af;

    move-result-object v2

    aput-object v2, v0, v1

    .line 24
    invoke-static {v0}, Lcom/twitter/util/serialization/i;->a([Lcom/twitter/util/serialization/af;)Lcom/twitter/util/serialization/ah;

    move-result-object v0

    sput-object v0, Lcom/twitter/model/dms/b;->a:Lcom/twitter/util/serialization/ah;

    .line 23
    return-void
.end method

.method constructor <init>(Lcom/twitter/model/dms/d;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/model/dms/d",
            "<**TT;>;)V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/twitter/model/dms/g;-><init>(Lcom/twitter/model/dms/h;)V

    .line 57
    iget-boolean v0, p1, Lcom/twitter/model/dms/d;->a:Z

    iput-boolean v0, p0, Lcom/twitter/model/dms/b;->b:Z

    .line 58
    iget-boolean v0, p1, Lcom/twitter/model/dms/d;->b:Z

    iput-boolean v0, p0, Lcom/twitter/model/dms/b;->c:Z

    .line 59
    invoke-static {p1}, Lcom/twitter/model/dms/d;->a(Lcom/twitter/model/dms/d;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/twitter/model/dms/b;->g:J

    .line 60
    iget-object v0, p1, Lcom/twitter/model/dms/d;->c:Ljava/lang/Object;

    iput-object v0, p0, Lcom/twitter/model/dms/b;->h:Ljava/lang/Object;

    .line 61
    return-void
.end method


# virtual methods
.method public a(J)Z
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x1

    return v0
.end method

.method public abstract c()Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/twitter/util/serialization/ah",
            "<TT;>;"
        }
    .end annotation
.end method

.method public final d()[B
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lcom/twitter/model/dms/b;->e()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0}, Lcom/twitter/model/dms/b;->c()Lcom/twitter/util/serialization/ah;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/util/serialization/ag;->a(Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)[B

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 77
    iget-object v0, p0, Lcom/twitter/model/dms/b;->h:Ljava/lang/Object;

    return-object v0
.end method

.method public f()J
    .locals 2

    .prologue
    .line 82
    iget-wide v0, p0, Lcom/twitter/model/dms/b;->g:J

    return-wide v0
.end method

.method public g()Z
    .locals 2

    .prologue
    .line 86
    sget-object v0, Lcnb;->b:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/twitter/model/dms/b;->i()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public h()Z
    .locals 2

    .prologue
    .line 90
    sget-object v0, Lcnb;->a:Ljava/util/Set;

    invoke-virtual {p0}, Lcom/twitter/model/dms/b;->i()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
