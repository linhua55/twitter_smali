.class public Lcom/twitter/android/moments/ui/maker/bm;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/app/common/base/BaseFragmentActivity;

.field private final b:Lcom/twitter/android/lb;

.field private final c:Lrx/subjects/ReplaySubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/subjects/ReplaySubject",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final d:I


# direct methods
.method public constructor <init>(ILcom/twitter/android/lb;Lcom/twitter/app/common/base/BaseFragmentActivity;)V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Lrx/subjects/ReplaySubject;->q()Lrx/subjects/ReplaySubject;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/maker/bm;->c:Lrx/subjects/ReplaySubject;

    .line 35
    iput-object p3, p0, Lcom/twitter/android/moments/ui/maker/bm;->a:Lcom/twitter/app/common/base/BaseFragmentActivity;

    .line 36
    iput-object p2, p0, Lcom/twitter/android/moments/ui/maker/bm;->b:Lcom/twitter/android/lb;

    .line 37
    iput p1, p0, Lcom/twitter/android/moments/ui/maker/bm;->d:I

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/maker/bm;)Lrx/subjects/ReplaySubject;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bm;->c:Lrx/subjects/ReplaySubject;

    return-object v0
.end method


# virtual methods
.method public a()Lrx/o;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/o",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 46
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bm;->a:Lcom/twitter/app/common/base/BaseFragmentActivity;

    invoke-virtual {p0, v0}, Lcom/twitter/android/moments/ui/maker/bm;->a(Landroid/app/Activity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lrx/o;->b(Ljava/lang/Object;)Lrx/o;

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    .line 49
    :cond_0
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bm;->a:Lcom/twitter/app/common/base/BaseFragmentActivity;

    iget v1, p0, Lcom/twitter/android/moments/ui/maker/bm;->d:I

    invoke-virtual {v0, v1}, Lcom/twitter/app/common/base/BaseFragmentActivity;->i(I)V

    .line 50
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bm;->a:Lcom/twitter/app/common/base/BaseFragmentActivity;

    iget v1, p0, Lcom/twitter/android/moments/ui/maker/bm;->d:I

    new-instance v2, Lcom/twitter/android/moments/ui/maker/bn;

    invoke-direct {v2, p0}, Lcom/twitter/android/moments/ui/maker/bn;-><init>(Lcom/twitter/android/moments/ui/maker/bm;)V

    invoke-virtual {v0, v1, v2}, Lcom/twitter/app/common/base/BaseFragmentActivity;->a(ILcom/twitter/app/common/util/w;)V

    .line 64
    new-instance v0, Lcom/twitter/android/runtimepermissions/b;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/bm;->a:Lcom/twitter/app/common/base/BaseFragmentActivity;

    const v2, 0x7f0a03d8

    .line 65
    invoke-virtual {v1, v2}, Lcom/twitter/app/common/base/BaseFragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/moments/ui/maker/bm;->a:Lcom/twitter/app/common/base/BaseFragmentActivity;

    new-array v3, v6, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string/jumbo v5, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v5, v3, v4

    invoke-direct {v0, v1, v2, v3}, Lcom/twitter/android/runtimepermissions/b;-><init>(Ljava/lang/String;Landroid/content/Context;[Ljava/lang/String;)V

    const-string/jumbo v1, ":composition:gallery:"

    .line 66
    invoke-virtual {v0, v1}, Lcom/twitter/android/runtimepermissions/b;->f(Ljava/lang/String;)Lcom/twitter/android/runtimepermissions/b;

    move-result-object v0

    .line 67
    invoke-virtual {v0, v6}, Lcom/twitter/android/runtimepermissions/b;->a(Z)Lcom/twitter/android/runtimepermissions/b;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Lcom/twitter/android/runtimepermissions/b;->a()Landroid/content/Intent;

    move-result-object v0

    .line 69
    iget-object v1, p0, Lcom/twitter/android/moments/ui/maker/bm;->a:Lcom/twitter/app/common/base/BaseFragmentActivity;

    iget v2, p0, Lcom/twitter/android/moments/ui/maker/bm;->d:I

    invoke-virtual {v1, v0, v2}, Lcom/twitter/app/common/base/BaseFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 70
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bm;->c:Lrx/subjects/ReplaySubject;

    goto :goto_0
.end method

.method public a(Landroid/app/Activity;)Z
    .locals 4

    .prologue
    .line 41
    iget-object v0, p0, Lcom/twitter/android/moments/ui/maker/bm;->b:Lcom/twitter/android/lb;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string/jumbo v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Lcom/twitter/android/lb;->a(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
