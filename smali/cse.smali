.class public Lcse;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final a:Lcom/twitter/util/serialization/ah;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/twitter/util/serialization/ah",
            "<",
            "Lcse;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final b:J

.field public final c:Ljava/lang/String;

.field public final d:Ljava/lang/String;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:Z

.field public final i:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 16
    new-instance v0, Lcsh;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcsh;-><init>(Lcsf;)V

    sput-object v0, Lcse;->a:Lcom/twitter/util/serialization/ah;

    return-void
.end method

.method private constructor <init>(Lcsg;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    invoke-static {p1}, Lcsg;->a(Lcsg;)J

    move-result-wide v2

    iput-wide v2, p0, Lcse;->b:J

    .line 34
    invoke-static {p1}, Lcsg;->b(Lcsg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcse;->c:Ljava/lang/String;

    .line 35
    invoke-static {p1}, Lcsg;->c(Lcsg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcse;->d:Ljava/lang/String;

    .line 36
    invoke-static {p1}, Lcsg;->d(Lcsg;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcse;->e:Ljava/lang/String;

    .line 40
    invoke-static {p1}, Lcsg;->e(Lcsg;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcse;->f:Ljava/lang/String;

    .line 41
    invoke-static {p1}, Lcsg;->f(Lcsg;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/util/aj;->a(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-object v1, p0, Lcse;->g:Ljava/lang/String;

    .line 42
    invoke-static {p1}, Lcsg;->g(Lcsg;)Z

    move-result v0

    iput-boolean v0, p0, Lcse;->h:Z

    .line 43
    invoke-static {p1}, Lcsg;->h(Lcsg;)Z

    move-result v0

    iput-boolean v0, p0, Lcse;->i:Z

    .line 44
    return-void

    .line 40
    :cond_0
    invoke-static {p1}, Lcsg;->e(Lcsg;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 41
    :cond_1
    invoke-static {p1}, Lcsg;->f(Lcsg;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method

.method synthetic constructor <init>(Lcsg;Lcsf;)V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0, p1}, Lcse;-><init>(Lcsg;)V

    return-void
.end method
