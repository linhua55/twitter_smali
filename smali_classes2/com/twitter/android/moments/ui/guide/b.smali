.class Lcom/twitter/android/moments/ui/guide/b;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Landroid/app/Activity;

.field private b:J

.field private c:J


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/twitter/android/moments/ui/guide/b;->a:Landroid/app/Activity;

    .line 75
    return-void
.end method


# virtual methods
.method public a()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 91
    new-instance v0, Lcom/twitter/model/moments/am;

    invoke-direct {v0}, Lcom/twitter/model/moments/am;-><init>()V

    iget-wide v2, p0, Lcom/twitter/android/moments/ui/guide/b;->b:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/am;->b(Ljava/lang/Long;)Lcom/twitter/model/moments/am;

    move-result-object v0

    iget-wide v2, p0, Lcom/twitter/android/moments/ui/guide/b;->c:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twitter/model/moments/am;->a(Ljava/lang/Long;)Lcom/twitter/model/moments/am;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/model/moments/am;->q()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twitter/model/moments/ak;

    .line 92
    new-instance v1, Lcom/twitter/android/moments/ui/maker/cm;

    iget-wide v2, p0, Lcom/twitter/android/moments/ui/guide/b;->c:J

    invoke-direct {v1, v2, v3, v0}, Lcom/twitter/android/moments/ui/maker/cm;-><init>(JLcom/twitter/model/moments/ak;)V

    iget-object v0, p0, Lcom/twitter/android/moments/ui/guide/b;->a:Landroid/app/Activity;

    const-class v2, Lcom/twitter/android/moments/ui/maker/MomentMakerMainActivity;

    .line 93
    invoke-virtual {v1, v0, v2}, Lcom/twitter/android/moments/ui/maker/cm;->a(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 92
    return-object v0
.end method

.method public a(J)Lcom/twitter/android/moments/ui/guide/b;
    .locals 1

    .prologue
    .line 79
    iput-wide p1, p0, Lcom/twitter/android/moments/ui/guide/b;->b:J

    .line 80
    return-object p0
.end method

.method public b(J)Lcom/twitter/android/moments/ui/guide/b;
    .locals 1

    .prologue
    .line 85
    iput-wide p1, p0, Lcom/twitter/android/moments/ui/guide/b;->c:J

    .line 86
    return-object p0
.end method
