.class public Lcqb;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcqb;


# instance fields
.field public final b:J

.field public final c:J


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 9
    new-instance v0, Lcqb;

    const-wide/16 v2, 0x0

    const-wide v4, 0x7fffffffffffffffL

    invoke-direct {v0, v2, v3, v4, v5}, Lcqb;-><init>(JJ)V

    sput-object v0, Lcqb;->a:Lcqb;

    return-void
.end method

.method private constructor <init>(JJ)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-wide p1, p0, Lcqb;->b:J

    .line 43
    iput-wide p3, p0, Lcqb;->c:J

    .line 44
    return-void
.end method

.method public static a(JJ)Lcqb;
    .locals 6

    .prologue
    const-wide v0, 0x7fffffffffffffffL

    const-wide/16 v4, 0x0

    .line 21
    cmp-long v2, p0, v4

    if-gtz v2, :cond_2

    .line 22
    cmp-long v2, p2, v4

    if-lez v2, :cond_0

    cmp-long v0, p2, v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcqb;->a:Lcqb;

    .line 26
    :goto_0
    return-object v0

    .line 22
    :cond_1
    new-instance v0, Lcqb;

    invoke-direct {v0, v4, v5, p2, p3}, Lcqb;-><init>(JJ)V

    goto :goto_0

    .line 26
    :cond_2
    new-instance v2, Lcqb;

    cmp-long v3, p2, v4

    if-gtz v3, :cond_3

    move-wide p2, v0

    :cond_3
    invoke-direct {v2, p0, p1, p2, p3}, Lcqb;-><init>(JJ)V

    move-object v0, v2

    goto :goto_0
.end method

.method public static a(Ljava/util/Date;Ljava/util/Date;)Lcqb;
    .locals 6

    .prologue
    .line 31
    if-nez p0, :cond_1

    .line 32
    if-nez p1, :cond_0

    sget-object v0, Lcqb;->a:Lcqb;

    .line 34
    :goto_0
    return-object v0

    .line 32
    :cond_0
    new-instance v0, Lcqb;

    const-wide/16 v2, 0x0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcqb;-><init>(JJ)V

    goto :goto_0

    .line 34
    :cond_1
    new-instance v2, Lcqb;

    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    if-nez p1, :cond_2

    const-wide v0, 0x7fffffffffffffffL

    :goto_1
    invoke-direct {v2, v4, v5, v0, v1}, Lcqb;-><init>(JJ)V

    move-object v0, v2

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    goto :goto_1
.end method


# virtual methods
.method public a(J)Z
    .locals 3

    .prologue
    .line 51
    iget-wide v0, p0, Lcqb;->b:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcqb;->c:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
