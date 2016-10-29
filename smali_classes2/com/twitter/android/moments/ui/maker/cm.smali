.class public Lcom/twitter/android/moments/ui/maker/cm;
.super Lcom/twitter/app/common/base/z;
.source "Twttr"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/app/common/base/z",
        "<",
        "Lcom/twitter/android/moments/ui/maker/cm;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Lcom/twitter/model/moments/ak;


# direct methods
.method public constructor <init>(JLcom/twitter/model/moments/ak;)V
    .locals 3

    .prologue
    .line 92
    invoke-direct {p0}, Lcom/twitter/app/common/base/z;-><init>()V

    .line 93
    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/cm;->a:Lcom/twitter/model/moments/ak;

    .line 94
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/cm;->c:Landroid/content/Intent;

    const-string/jumbo v1, "moment_id"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 95
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/cm;->c:Landroid/content/Intent;

    const-string/jumbo v1, "page_id"

    sget-object v2, Lcom/twitter/model/moments/ak;->a:Lcom/twitter/util/serialization/ah;

    invoke-static {v0, v1, p3, v2}, Lcom/twitter/util/aa;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/Object;Lcom/twitter/util/serialization/ah;)Landroid/content/Intent;

    .line 96
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/twitter/android/moments/ui/maker/cm;->d(Z)Lcom/twitter/app/common/base/z;

    .line 97
    return-void
.end method
