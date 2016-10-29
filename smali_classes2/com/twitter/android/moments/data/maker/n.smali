.class public Lcom/twitter/android/moments/data/maker/n;
.super Lcom/evernote/android/job/Job;
.source "Twttr"


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/twitter/android/moments/data/maker/n;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/moments/data/maker/n;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Lcom/evernote/android/job/Job;-><init>()V

    return-void
.end method

.method public static a(J)Ljava/lang/String;
    .locals 2

    .prologue
    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/twitter/android/moments/data/maker/n;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 35
    sget-object v0, Lcom/twitter/android/moments/data/maker/n;->a:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected a(Lcom/evernote/android/job/b;)Lcom/evernote/android/job/Job$Result;
    .locals 6

    .prologue
    .line 23
    invoke-static {}, Lagn;->a()Lagu;

    move-result-object v0

    .line 24
    invoke-static {}, Lcom/twitter/app/common/app/n;->w()Lcom/twitter/app/common/app/n;

    move-result-object v1

    invoke-virtual {v0, v1}, Lagu;->a(Lcom/twitter/app/common/app/n;)Lagu;

    move-result-object v0

    new-instance v1, Lagy;

    invoke-direct {v1}, Lagy;-><init>()V

    .line 25
    invoke-virtual {v0, v1}, Lagu;->a(Lagy;)Lagu;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Lagu;->a()Lagx;

    move-result-object v0

    .line 27
    invoke-virtual {p1}, Lcom/evernote/android/job/b;->d()Lae;

    move-result-object v1

    const-string/jumbo v2, "moment_id"

    const-wide/16 v4, 0x0

    invoke-virtual {v1, v2, v4, v5}, Lae;->b(Ljava/lang/String;J)J

    move-result-wide v2

    .line 29
    invoke-interface {v0}, Lagx;->b()Lcom/twitter/android/moments/data/maker/o;

    move-result-object v0

    .line 30
    invoke-virtual {v0, v2, v3}, Lcom/twitter/android/moments/data/maker/o;->a(J)V

    .line 31
    sget-object v0, Lcom/evernote/android/job/Job$Result;->a:Lcom/evernote/android/job/Job$Result;

    return-object v0
.end method
