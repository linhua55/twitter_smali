.class public Lcpb;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcpb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:J

.field public final c:J

.field public final d:J

.field public final e:J

.field public final f:J

.field public final g:D

.field public final h:D

.field public final i:D

.field public final j:D

.field public final k:D

.field public final l:D

.field public final m:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 18
    new-instance v0, Lcpd;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcpd;-><init>(Lcpc;)V

    sput-object v0, Lcpb;->a:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method public constructor <init>(JJDDDDDDDJJJ)V
    .locals 3

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-wide p1, p0, Lcpb;->b:J

    .line 38
    iput-wide p3, p0, Lcpb;->c:J

    .line 39
    move-wide/from16 v0, p19

    iput-wide v0, p0, Lcpb;->d:J

    .line 40
    move-wide/from16 v0, p21

    iput-wide v0, p0, Lcpb;->e:J

    .line 41
    move-wide/from16 v0, p23

    iput-wide v0, p0, Lcpb;->f:J

    .line 42
    iput-wide p5, p0, Lcpb;->g:D

    .line 43
    iput-wide p7, p0, Lcpb;->h:D

    .line 44
    iput-wide p9, p0, Lcpb;->i:D

    .line 45
    iput-wide p11, p0, Lcpb;->j:D

    .line 46
    move-wide/from16 v0, p13

    iput-wide v0, p0, Lcpb;->k:D

    .line 47
    move-wide/from16 v0, p15

    iput-wide v0, p0, Lcpb;->l:D

    .line 48
    move-wide/from16 v0, p17

    iput-wide v0, p0, Lcpb;->m:D

    .line 49
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 53
    instance-of v0, p1, Lcpb;

    if-eqz v0, :cond_0

    check-cast p1, Lcpb;

    iget-wide v0, p1, Lcpb;->b:J

    iget-wide v2, p0, Lcpb;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 59
    iget-wide v0, p0, Lcpb;->b:J

    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(J)I

    move-result v0

    return v0
.end method
