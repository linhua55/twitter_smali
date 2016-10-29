.class public Lcom/twitter/model/moments/ak;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcom/twitter/model/moments/ak;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:Ljava/lang/String;

.field public final c:Lcom/twitter/model/moments/MomentPageDisplayMode;

.field public final d:Ljava/lang/Long;

.field public final e:Ljava/lang/Long;

.field public final f:Ljava/lang/Long;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    new-instance v0, Lcom/twitter/model/moments/an;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/model/moments/an;-><init>(Lcom/twitter/model/moments/al;)V

    sput-object v0, Lcom/twitter/model/moments/ak;->a:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method private constructor <init>(Lcom/twitter/model/moments/am;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iget-object v0, p1, Lcom/twitter/model/moments/am;->a:Ljava/lang/Long;

    iput-object v0, p0, Lcom/twitter/model/moments/ak;->d:Ljava/lang/Long;

    .line 37
    iget-object v0, p1, Lcom/twitter/model/moments/am;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/model/moments/ak;->b:Ljava/lang/String;

    .line 38
    iget-object v0, p1, Lcom/twitter/model/moments/am;->e:Lcom/twitter/model/moments/MomentPageDisplayMode;

    iput-object v0, p0, Lcom/twitter/model/moments/ak;->c:Lcom/twitter/model/moments/MomentPageDisplayMode;

    .line 39
    iget-object v0, p1, Lcom/twitter/model/moments/am;->c:Ljava/lang/Long;

    iput-object v0, p0, Lcom/twitter/model/moments/ak;->e:Ljava/lang/Long;

    .line 40
    iget-object v0, p1, Lcom/twitter/model/moments/am;->d:Ljava/lang/Long;

    iput-object v0, p0, Lcom/twitter/model/moments/ak;->f:Ljava/lang/Long;

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/model/moments/am;Lcom/twitter/model/moments/al;)V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0, p1}, Lcom/twitter/model/moments/ak;-><init>(Lcom/twitter/model/moments/am;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)Lcom/twitter/model/moments/ak;
    .locals 6

    .prologue
    .line 60
    const-string/jumbo v0, "$$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 61
    array-length v1, v0

    const/4 v2, 0x5

    if-ge v1, v2, :cond_0

    .line 62
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Got invalid page ID string: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lbix;->a(Ljava/lang/Throwable;)V

    .line 64
    :cond_0
    const/4 v1, 0x0

    aget-object v1, v0, v1

    invoke-static {v1}, Lcom/twitter/model/moments/ak;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    .line 65
    const/4 v2, 0x1

    aget-object v2, v0, v2

    .line 66
    const/4 v3, 0x2

    aget-object v3, v0, v3

    invoke-static {v3}, Lcom/twitter/model/moments/ak;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    .line 67
    const/4 v4, 0x3

    aget-object v4, v0, v4

    invoke-static {v4}, Lcom/twitter/model/moments/ak;->b(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    .line 68
    const/4 v5, 0x4

    aget-object v0, v0, v5

    invoke-static {v0}, Lcom/twitter/model/moments/MomentPageDisplayMode;->valueOf(Ljava/lang/String;)Lcom/twitter/model/moments/MomentPageDisplayMode;

    move-result-object v0

    .line 69
    new-instance v5, Lcom/twitter/model/moments/am;

    invoke-direct {v5}, Lcom/twitter/model/moments/am;-><init>()V

    .line 70
    invoke-virtual {v5, v1}, Lcom/twitter/model/moments/am;->a(Ljava/lang/Long;)Lcom/twitter/model/moments/am;

    move-result-object v1

    .line 71
    invoke-virtual {v1, v2}, Lcom/twitter/model/moments/am;->a(Ljava/lang/String;)Lcom/twitter/model/moments/am;

    move-result-object v1

    .line 72
    invoke-virtual {v1, v3}, Lcom/twitter/model/moments/am;->b(Ljava/lang/Long;)Lcom/twitter/model/moments/am;

    move-result-object v1

    .line 73
    invoke-virtual {v1, v4}, Lcom/twitter/model/moments/am;->c(Ljava/lang/Long;)Lcom/twitter/model/moments/am;

    move-result-object v1

    .line 74
    invoke-virtual {v1, v0}, Lcom/twitter/model/moments/am;->a(Lcom/twitter/model/moments/MomentPageDisplayMode;)Lcom/twitter/model/moments/am;

    move-result-object v0

    .line 75
    invoke-virtual {v0}, Lcom/twitter/model/moments/am;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/ak;

    .line 69
    return-object v0
.end method

.method private static a(Ljava/lang/Long;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    if-nez p0, :cond_0

    const-string/jumbo v0, "no_id"

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static b(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    .prologue
    .line 101
    const-string/jumbo v0, "no_id"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const/4 v0, 0x0

    .line 104
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 80
    if-ne p0, p1, :cond_0

    .line 81
    const/4 v0, 0x1

    .line 86
    :goto_0
    return v0

    .line 83
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_2

    .line 84
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 86
    :cond_2
    invoke-virtual {p0}, Lcom/twitter/model/moments/ak;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/twitter/util/object/ObjectUtils;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 91
    invoke-virtual {p0}, Lcom/twitter/model/moments/ak;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 51
    iget-object v0, p0, Lcom/twitter/model/moments/ak;->d:Ljava/lang/Long;

    invoke-static {v0}, Lcom/twitter/model/moments/ak;->a(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/twitter/model/moments/ak;->e:Ljava/lang/Long;

    invoke-static {v1}, Lcom/twitter/model/moments/ak;->a(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v1

    .line 53
    iget-object v2, p0, Lcom/twitter/model/moments/ak;->f:Ljava/lang/Long;

    invoke-static {v2}, Lcom/twitter/model/moments/ak;->a(Ljava/lang/Long;)Ljava/lang/String;

    move-result-object v2

    .line 54
    const-string/jumbo v3, "$$"

    const/4 v4, 0x5

    new-array v4, v4, [Ljava/io/Serializable;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    iget-object v5, p0, Lcom/twitter/model/moments/ak;->b:Ljava/lang/String;

    aput-object v5, v4, v0

    const/4 v0, 0x2

    aput-object v1, v4, v0

    const/4 v0, 0x3

    aput-object v2, v4, v0

    const/4 v0, 0x4

    iget-object v1, p0, Lcom/twitter/model/moments/ak;->c:Lcom/twitter/model/moments/MomentPageDisplayMode;

    aput-object v1, v4, v0

    invoke-static {v3, v4}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
