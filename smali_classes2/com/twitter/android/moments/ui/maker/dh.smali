.class public Lcom/twitter/android/moments/ui/maker/dh;
.super Lauf;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lauf",
        "<",
        "Lcom/twitter/android/moments/ui/maker/dg;",
        ">;"
    }
.end annotation


# instance fields
.field private final c:J

.field private final d:Lcom/twitter/library/client/Session;


# direct methods
.method protected constructor <init>(Landroid/app/Activity;Lcom/twitter/library/client/Session;J)V
    .locals 1

    .prologue
    .line 63
    const-class v0, Lcom/twitter/android/moments/ui/maker/MomentSettingsActivity;

    invoke-direct {p0, p1, v0}, Lauf;-><init>(Landroid/app/Activity;Ljava/lang/Class;)V

    .line 64
    iput-wide p3, p0, Lcom/twitter/android/moments/ui/maker/dh;->c:J

    .line 65
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/dh;->d:Lcom/twitter/library/client/Session;

    .line 66
    return-void
.end method

.method public static a(Landroid/app/Activity;J)Lcom/twitter/android/moments/ui/maker/dh;
    .locals 3

    .prologue
    .line 59
    new-instance v0, Lcom/twitter/android/moments/ui/maker/dh;

    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v1

    invoke-virtual {v1}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/twitter/android/moments/ui/maker/dh;-><init>(Landroid/app/Activity;Lcom/twitter/library/client/Session;J)V

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 6

    .prologue
    .line 69
    new-instance v0, Lcom/twitter/android/moments/ui/maker/dg;

    iget-wide v2, p0, Lcom/twitter/android/moments/ui/maker/dh;->c:J

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/dh;->d:Lcom/twitter/library/client/Session;

    invoke-virtual {v1}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/twitter/android/moments/ui/maker/dg;-><init>(JJ)V

    invoke-virtual {p0, v0}, Lcom/twitter/android/moments/ui/maker/dh;->b(Lauc;)V

    .line 70
    return-void
.end method
