.class public Lcom/twitter/android/notificationtimeline/l;
.super Ljava/lang/Object;
.source "Twttr"


# instance fields
.field private final a:Lcom/twitter/library/client/bk;

.field private final b:Ljava/lang/String;

.field private final c:Lcom/twitter/library/scribe/TwitterScribeAssociation;

.field private final d:Lcom/twitter/app/main/r;


# direct methods
.method public constructor <init>(Lcom/twitter/library/client/bk;Ljava/lang/String;Lcom/twitter/library/scribe/TwitterScribeAssociation;Lcom/twitter/app/main/r;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-object p1, p0, Lcom/twitter/android/notificationtimeline/l;->a:Lcom/twitter/library/client/bk;

    .line 30
    iput-object p2, p0, Lcom/twitter/android/notificationtimeline/l;->b:Ljava/lang/String;

    .line 31
    iput-object p3, p0, Lcom/twitter/android/notificationtimeline/l;->c:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    .line 32
    iput-object p4, p0, Lcom/twitter/android/notificationtimeline/l;->d:Lcom/twitter/app/main/r;

    .line 33
    return-void
.end method

.method static synthetic a(Lcom/twitter/android/notificationtimeline/l;)Lcom/twitter/app/main/r;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/twitter/android/notificationtimeline/l;->d:Lcom/twitter/app/main/r;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 4

    .prologue
    .line 41
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    const-string/jumbo v3, "I don\'t like this recommendation"

    aput-object v3, v1, v2

    new-instance v2, Lcom/twitter/android/notificationtimeline/m;

    invoke-direct {v2, p0}, Lcom/twitter/android/notificationtimeline/m;-><init>(Lcom/twitter/android/notificationtimeline/l;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a00fd

    const/4 v2, 0x0

    .line 54
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 55
    return-void
.end method

.method public a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 11

    .prologue
    const/4 v2, 0x0

    .line 36
    iget-object v0, p0, Lcom/twitter/android/notificationtimeline/l;->a:Lcom/twitter/library/client/bk;

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v4

    iget-object v8, p0, Lcom/twitter/android/notificationtimeline/l;->c:Lcom/twitter/library/scribe/TwitterScribeAssociation;

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/twitter/android/notificationtimeline/l;->b:Ljava/lang/String;

    move-object v1, p1

    move-object v3, p2

    move-object v6, v2

    move-object v7, v2

    invoke-static/range {v1 .. v10}, Lcom/twitter/android/client/OpenUriHelper;->a(Landroid/content/Context;Lcom/twitter/library/client/BrowserDataSource;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Lcom/twitter/library/scribe/TwitterScribeAssociation;ZLjava/lang/String;)V

    .line 38
    return-void
.end method
