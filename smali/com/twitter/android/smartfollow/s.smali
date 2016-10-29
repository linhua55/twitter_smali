.class public Lcom/twitter/android/smartfollow/s;
.super Lauv;
.source "Twttr"

# interfaces
.implements Lcom/twitter/android/smartfollow/r;


# instance fields
.field private final a:Lcom/twitter/app/common/base/BaseFragmentActivity;


# direct methods
.method public constructor <init>(Lcom/twitter/app/common/base/BaseFragmentActivity;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lauv;-><init>(Landroid/app/Activity;)V

    .line 39
    iput-object p1, p0, Lcom/twitter/android/smartfollow/s;->a:Lcom/twitter/app/common/base/BaseFragmentActivity;

    .line 40
    return-void
.end method


# virtual methods
.method public a([JLcom/twitter/library/service/z;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 52
    iget-object v0, p0, Lcom/twitter/android/smartfollow/s;->a:Lcom/twitter/app/common/base/BaseFragmentActivity;

    invoke-static {v0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v0

    new-instance v1, Lbub;

    iget-object v2, p0, Lcom/twitter/android/smartfollow/s;->a:Lcom/twitter/app/common/base/BaseFragmentActivity;

    .line 54
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, p1, v4}, Lbub;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;[JZ)V

    .line 52
    invoke-virtual {v0, v1, p2}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/z;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/twitter/android/smartfollow/s;->a:Lcom/twitter/app/common/base/BaseFragmentActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/twitter/android/DispatchActivity;->b(Landroid/app/Activity;Landroid/content/Intent;)V

    .line 47
    return-void
.end method

.method public varargs a(I[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 101
    invoke-static {}, Lcom/twitter/android/lb;->a()Lcom/twitter/android/lb;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/smartfollow/s;->a:Lcom/twitter/app/common/base/BaseFragmentActivity;

    invoke-virtual {v0, p1, v1, p2}, Lcom/twitter/android/lb;->a(ILandroid/app/Activity;[Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public a(JLjava/lang/String;I)V
    .locals 5

    .prologue
    .line 93
    iget-object v0, p0, Lcom/twitter/android/smartfollow/s;->a:Lcom/twitter/app/common/base/BaseFragmentActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twitter/android/smartfollow/s;->a:Lcom/twitter/app/common/base/BaseFragmentActivity;

    const-class v3, Lcom/twitter/android/smartfollow/interestsearch/InterestSearchActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v2, "extra_parent_id"

    .line 95
    invoke-virtual {v1, v2, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "extra_scribe_page"

    .line 96
    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 93
    invoke-virtual {v0, v1, p4}, Lcom/twitter/app/common/base/BaseFragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 97
    return-void
.end method

.method public a(Lcom/twitter/model/json/stratostore/JsonInterestSelections;)V
    .locals 3

    .prologue
    .line 85
    new-instance v0, Lbrl;

    iget-object v1, p0, Lcom/twitter/android/smartfollow/s;->a:Lcom/twitter/app/common/base/BaseFragmentActivity;

    .line 86
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v2

    invoke-direct {v0, v1, v2, p1}, Lbrl;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/model/json/stratostore/JsonInterestSelections;)V

    .line 88
    iget-object v1, p0, Lcom/twitter/android/smartfollow/s;->a:Lcom/twitter/app/common/base/BaseFragmentActivity;

    invoke-static {v1}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/z;)Ljava/lang/String;

    .line 89
    return-void
.end method

.method public a([Ljava/lang/String;Landroid/view/View;)V
    .locals 3

    .prologue
    .line 122
    iget-object v0, p0, Lcom/twitter/android/smartfollow/s;->a:Lcom/twitter/app/common/base/BaseFragmentActivity;

    .line 123
    invoke-static {}, Lcom/twitter/android/lb;->a()Lcom/twitter/android/lb;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/smartfollow/s;->a:Lcom/twitter/app/common/base/BaseFragmentActivity;

    invoke-virtual {v1, v2, p1}, Lcom/twitter/android/lb;->b(Landroid/content/Context;[Ljava/lang/String;)Ljava/util/Set;

    move-result-object v1

    .line 122
    invoke-static {v0, p2, v1}, Lcom/twitter/android/runtimepermissions/c;->a(Landroid/content/Context;Landroid/view/View;Ljava/util/Set;)V

    .line 124
    return-void
.end method

.method public a(Ljava/lang/String;)Z
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/twitter/android/smartfollow/s;->a:Lcom/twitter/app/common/base/BaseFragmentActivity;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Lcom/twitter/android/ContactsUploadService;->a(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public b()V
    .locals 6

    .prologue
    .line 106
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 107
    iget-object v1, p0, Lcom/twitter/android/smartfollow/s;->a:Lcom/twitter/app/common/base/BaseFragmentActivity;

    const-string/jumbo v2, "location_fatigue"

    .line 108
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    .line 107
    invoke-static {v1, v2, v4, v5}, Lcom/twitter/android/util/t;->a(Landroid/content/Context;Ljava/lang/String;J)Lcom/twitter/android/util/t;

    move-result-object v0

    .line 108
    invoke-virtual {v0}, Lcom/twitter/android/util/t;->b()V

    .line 109
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 5

    .prologue
    .line 65
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 66
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->f()Lcom/twitter/model/core/TwitterUser;

    move-result-object v1

    .line 67
    if-nez v1, :cond_0

    .line 81
    :goto_0
    return-void

    .line 71
    :cond_0
    new-instance v2, Lbsb;

    iget-object v3, p0, Lcom/twitter/android/smartfollow/s;->a:Lcom/twitter/app/common/base/BaseFragmentActivity;

    const/4 v4, 0x1

    invoke-direct {v2, v3, v0, v1, v4}, Lbsb;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;Lcom/twitter/model/core/TwitterUser;I)V

    .line 72
    invoke-static {}, Lcom/twitter/android/av/v;->a()I

    move-result v0

    invoke-virtual {v2, v0}, Lbsb;->f(I)Lbss;

    move-result-object v0

    const-string/jumbo v1, "HTL request after completing Signup/NUX is considered to be user initiated action. The app may or may not be visible"

    .line 73
    invoke-virtual {v0, v1}, Lbss;->l(Ljava/lang/String;)Lcom/twitter/library/service/x;

    move-result-object v0

    check-cast v0, Lbsb;

    .line 76
    invoke-static {p1}, Lcom/twitter/util/aj;->b(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    invoke-virtual {v0, p1}, Lbsb;->b(Ljava/lang/String;)Lbss;

    .line 80
    :cond_1
    iget-object v1, p0, Lcom/twitter/android/smartfollow/s;->a:Lcom/twitter/app/common/base/BaseFragmentActivity;

    invoke-static {v1}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;Lcom/twitter/library/service/z;)Ljava/lang/String;

    goto :goto_0
.end method

.method public c()V
    .locals 6

    .prologue
    .line 113
    invoke-static {}, Lcgb;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/twitter/android/smartfollow/s;->a:Lcom/twitter/app/common/base/BaseFragmentActivity;

    const-string/jumbo v2, "connect_fatigue"

    .line 116
    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    .line 115
    invoke-static {v1, v2, v4, v5}, Lcom/twitter/android/util/t;->a(Landroid/content/Context;Ljava/lang/String;J)Lcom/twitter/android/util/t;

    move-result-object v0

    .line 116
    invoke-virtual {v0}, Lcom/twitter/android/util/t;->b()V

    .line 118
    :cond_0
    return-void
.end method
