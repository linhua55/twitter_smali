.class public Lcom/twitter/android/moments/ui/fullscreen/t;
.super Ljava/lang/Object;
.source "Twttr"


# direct methods
.method public static a(Landroid/content/Context;Lcom/twitter/model/core/TwitterUser;Lcom/twitter/android/moments/ui/fullscreen/a;J)Landroid/app/Dialog;
    .locals 9

    .prologue
    .line 53
    invoke-static {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/t;->b(Landroid/content/Context;Lcom/twitter/model/core/TwitterUser;)[Ljava/lang/String;

    move-result-object v6

    .line 54
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-direct {v7, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/twitter/android/moments/ui/fullscreen/v;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/twitter/android/moments/ui/fullscreen/v;-><init>(Landroid/content/Context;Lcom/twitter/model/core/TwitterUser;Lcom/twitter/android/moments/ui/fullscreen/a;J)V

    .line 55
    invoke-virtual {v7, v6, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 72
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 73
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 74
    return-object v0
.end method

.method public static a(Landroid/content/Context;Lcom/twitter/model/core/TwitterUser;Lcom/twitter/android/moments/ui/fullscreen/a;Lcom/twitter/model/core/Tweet;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 26
    invoke-static {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/t;->b(Landroid/content/Context;Lcom/twitter/model/core/TwitterUser;)[Ljava/lang/String;

    move-result-object v0

    .line 27
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/twitter/android/moments/ui/fullscreen/u;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/twitter/android/moments/ui/fullscreen/u;-><init>(Landroid/content/Context;Lcom/twitter/model/core/TwitterUser;Lcom/twitter/android/moments/ui/fullscreen/a;Lcom/twitter/model/core/Tweet;)V

    .line 28
    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 47
    return-object v0
.end method

.method static synthetic a(Landroid/content/Context;Lcom/twitter/model/core/TwitterUser;)V
    .locals 0

    .prologue
    .line 17
    invoke-static {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/t;->c(Landroid/content/Context;Lcom/twitter/model/core/TwitterUser;)V

    return-void
.end method

.method private static b(Landroid/content/Context;Lcom/twitter/model/core/TwitterUser;)[Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 79
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    .line 80
    const v1, 0x7f0a0578

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    .line 81
    const v1, 0x7f0a056c

    new-array v2, v7, [Ljava/lang/Object;

    const v3, 0x7f0a0a87

    new-array v4, v7, [Ljava/lang/Object;

    iget-object v5, p1, Lcom/twitter/model/core/TwitterUser;->k:Ljava/lang/String;

    aput-object v5, v4, v6

    .line 82
    invoke-virtual {p0, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 81
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    .line 83
    return-object v0
.end method

.method private static c(Landroid/content/Context;Lcom/twitter/model/core/TwitterUser;)V
    .locals 10

    .prologue
    const/4 v4, 0x0

    .line 87
    iget-wide v2, p1, Lcom/twitter/model/core/TwitterUser;->c:J

    const/4 v7, 0x0

    move-object v1, p0

    move-object v5, v4

    move-object v6, v4

    move-object v8, v4

    move-object v9, v4

    invoke-static/range {v1 .. v9}, Lcom/twitter/android/ProfileActivity;->a(Landroid/content/Context;JLjava/lang/String;Lcss;Lcom/twitter/library/scribe/TwitterScribeAssociation;ILcom/twitter/library/api/PromotedEvent;Lcom/twitter/model/timeline/al;)Landroid/content/Intent;

    move-result-object v0

    .line 89
    const/4 v1, 0x1

    .line 90
    invoke-static {v0, v1}, Lcom/twitter/app/common/base/z;->a(Landroid/content/Intent;Z)Landroid/content/Intent;

    move-result-object v0

    .line 89
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 91
    return-void
.end method
