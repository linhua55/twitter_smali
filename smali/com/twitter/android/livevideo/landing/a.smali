.class public Lcom/twitter/android/livevideo/landing/a;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 19
    const-class v0, Lcom/twitter/android/livevideo/landing/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/livevideo/landing/a;->c:Ljava/lang/String;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/twitter/android/livevideo/landing/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":event_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/livevideo/landing/a;->d:Ljava/lang/String;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/twitter/android/livevideo/landing/a;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ":data_source_id"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/twitter/android/livevideo/landing/a;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .prologue
    .line 35
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/android/livevideo/landing/a;-><init>(JLjava/lang/String;)V

    .line 36
    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-wide p1, p0, Lcom/twitter/android/livevideo/landing/a;->a:J

    .line 45
    iput-object p3, p0, Lcom/twitter/android/livevideo/landing/a;->b:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public static a(Landroid/content/Intent;)Lcom/twitter/android/livevideo/landing/a;
    .locals 4

    .prologue
    .line 50
    sget-object v0, Lcom/twitter/android/livevideo/landing/a;->d:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v0, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 51
    sget-object v2, Lcom/twitter/android/livevideo/landing/a;->e:Ljava/lang/String;

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 52
    new-instance v3, Lcom/twitter/android/livevideo/landing/a;

    invoke-direct {v3, v0, v1, v2}, Lcom/twitter/android/livevideo/landing/a;-><init>(JLjava/lang/String;)V

    return-object v3
.end method

.method public static a(Lcom/twitter/app/common/list/w;)Lcom/twitter/android/livevideo/landing/a;
    .locals 4

    .prologue
    .line 57
    sget-object v0, Lcom/twitter/android/livevideo/landing/a;->d:Ljava/lang/String;

    const-wide/16 v2, -0x1

    invoke-virtual {p0, v0, v2, v3}, Lcom/twitter/app/common/list/w;->a(Ljava/lang/String;J)J

    move-result-wide v0

    .line 58
    sget-object v2, Lcom/twitter/android/livevideo/landing/a;->e:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/twitter/app/common/list/w;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/twitter/util/object/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 59
    new-instance v3, Lcom/twitter/android/livevideo/landing/a;

    invoke-direct {v3, v0, v1, v2}, Lcom/twitter/android/livevideo/landing/a;-><init>(JLjava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method public a(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 64
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/twitter/android/livevideo/landing/LiveVideoLandingActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 65
    sget-object v1, Lcom/twitter/android/livevideo/landing/a;->d:Ljava/lang/String;

    iget-wide v2, p0, Lcom/twitter/android/livevideo/landing/a;->a:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 66
    sget-object v1, Lcom/twitter/android/livevideo/landing/a;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/android/livevideo/landing/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 67
    return-object v0
.end method

.method public a(Lcom/twitter/app/common/list/y;)Lcom/twitter/app/common/list/w;
    .locals 4

    .prologue
    .line 72
    if-nez p1, :cond_0

    new-instance p1, Lcom/twitter/app/common/list/y;

    invoke-direct {p1}, Lcom/twitter/app/common/list/y;-><init>()V

    .line 73
    :cond_0
    sget-object v0, Lcom/twitter/android/livevideo/landing/a;->d:Ljava/lang/String;

    iget-wide v2, p0, Lcom/twitter/android/livevideo/landing/a;->a:J

    .line 74
    invoke-virtual {p1, v0, v2, v3}, Lcom/twitter/app/common/list/y;->a(Ljava/lang/String;J)Lcom/twitter/app/common/base/g;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    sget-object v1, Lcom/twitter/android/livevideo/landing/a;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/twitter/android/livevideo/landing/a;->b:Ljava/lang/String;

    .line 75
    invoke-virtual {v0, v1, v2}, Lcom/twitter/app/common/list/y;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/app/common/base/g;

    move-result-object v0

    check-cast v0, Lcom/twitter/app/common/list/y;

    .line 76
    invoke-virtual {v0}, Lcom/twitter/app/common/list/y;->b()Lcom/twitter/app/common/list/w;

    move-result-object v0

    .line 73
    return-object v0
.end method
