.class public Lcom/twitter/android/moments/ui/maker/dg;
.super Lcom/twitter/app/common/base/z;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/app/common/base/z",
        "<",
        "Lcom/twitter/android/moments/ui/maker/dg;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:J

.field public final b:J


# direct methods
.method public constructor <init>(JJ)V
    .locals 3

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/twitter/app/common/base/z;-><init>()V

    .line 34
    iput-wide p1, p0, Lcom/twitter/android/moments/ui/maker/dg;->a:J

    .line 35
    iput-wide p3, p0, Lcom/twitter/android/moments/ui/maker/dg;->b:J

    .line 36
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/dg;->c:Landroid/content/Intent;

    const-string/jumbo v1, "extra_moment_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 37
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/dg;->c:Landroid/content/Intent;

    const-string/jumbo v1, "extra_account_id"

    invoke-virtual {v0, v1, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 38
    return-void
.end method

.method public static a()Lcom/twitter/android/moments/ui/maker/dg;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 49
    new-instance v0, Lcom/twitter/android/moments/ui/maker/dg;

    invoke-direct {v0, v2, v3, v2, v3}, Lcom/twitter/android/moments/ui/maker/dg;-><init>(JJ)V

    return-object v0
.end method

.method public static a(Landroid/content/Intent;)Lcom/twitter/android/moments/ui/maker/dg;
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 42
    const-string/jumbo v0, "extra_moment_id"

    invoke-virtual {p0, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    .line 43
    const-string/jumbo v2, "extra_account_id"

    invoke-virtual {p0, v2, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v2

    .line 44
    new-instance v4, Lcom/twitter/android/moments/ui/maker/dg;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/twitter/android/moments/ui/maker/dg;-><init>(JJ)V

    return-object v4
.end method
