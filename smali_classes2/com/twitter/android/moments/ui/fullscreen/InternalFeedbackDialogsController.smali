.class public Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;
.implements Lcom/twitter/android/moments/ui/fullscreen/gu;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/twitter/moments/core/ui/widget/capsule/b;

.field private final c:Lcom/twitter/android/moments/ui/fullscreen/gt;

.field private d:Z

.field private e:Lcom/twitter/model/moments/viewmodels/MomentPage;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/twitter/moments/core/ui/widget/capsule/b;)V
    .locals 2

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;->a:Landroid/content/Context;

    .line 63
    iput-object p2, p0, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;->b:Lcom/twitter/moments/core/ui/widget/capsule/b;

    .line 65
    invoke-static {}, Lcom/twitter/config/AppConfig;->m()Lcom/twitter/config/AppConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/config/AppConfig;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const-string/jumbo v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    .line 67
    new-instance v1, Lcom/twitter/android/moments/ui/fullscreen/gt;

    invoke-direct {v1, v0}, Lcom/twitter/android/moments/ui/fullscreen/gt;-><init>(Landroid/hardware/SensorManager;)V

    iput-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;->c:Lcom/twitter/android/moments/ui/fullscreen/gt;

    .line 68
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;->c:Lcom/twitter/android/moments/ui/fullscreen/gt;

    invoke-virtual {v0, p0}, Lcom/twitter/android/moments/ui/fullscreen/gt;->a(Lcom/twitter/android/moments/ui/fullscreen/gu;)V

    .line 72
    :goto_0
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;->c:Lcom/twitter/android/moments/ui/fullscreen/gt;

    goto :goto_0
.end method

.method private a(Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackType;)V
    .locals 3

    .prologue
    .line 114
    .line 115
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;->a:Landroid/content/Context;

    .line 116
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b001b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/moments/ui/fullscreen/cr;

    invoke-direct {v2, p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/cr;-><init>(Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackType;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0ac4

    .line 127
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 128
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 129
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 130
    return-void
.end method

.method private a(Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackType;Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackSentiment;)V
    .locals 3

    .prologue
    .line 134
    invoke-static {p1, p2}, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;->c(Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackType;Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackSentiment;)I

    move-result v0

    .line 135
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;->a:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;->a:Landroid/content/Context;

    .line 136
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lcom/twitter/android/moments/ui/fullscreen/cs;

    invoke-direct {v2, p0, p1, p2}, Lcom/twitter/android/moments/ui/fullscreen/cs;-><init>(Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackType;Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackSentiment;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 143
    invoke-static {p1, p2}, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;->b(Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackType;Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackSentiment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 144
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 146
    return-void
.end method

.method private a(Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackType;Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackSentiment;I)V
    .locals 4

    .prologue
    .line 150
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;->a:Landroid/content/Context;

    const v2, 0x7f0401d0

    const/4 v3, 0x0

    .line 151
    invoke-static {v1, v2, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a05e4

    new-instance v2, Lcom/twitter/android/moments/ui/fullscreen/ct;

    invoke-direct {v2, p0, p1, p2, p3}, Lcom/twitter/android/moments/ui/fullscreen/ct;-><init>(Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackType;Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackSentiment;I)V

    .line 152
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 161
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 162
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 163
    return-void
.end method

.method private a(Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackType;Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackSentiment;ILjava/lang/String;)V
    .locals 11

    .prologue
    .line 212
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/twitter/library/client/bd;->a(Landroid/content/Context;)Lcom/twitter/library/client/bd;

    move-result-object v10

    .line 213
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;->e:Lcom/twitter/model/moments/viewmodels/MomentPage;

    instance-of v0, v0, Lcom/twitter/model/moments/viewmodels/y;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackType;->a:Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackType;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;->e:Lcom/twitter/model/moments/viewmodels/MomentPage;

    check-cast v0, Lcom/twitter/model/moments/viewmodels/y;

    .line 214
    invoke-virtual {v0}, Lcom/twitter/model/moments/viewmodels/y;->s()J

    move-result-wide v6

    .line 215
    :goto_0
    new-instance v0, Lbqd;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;->a:Landroid/content/Context;

    .line 216
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v2

    iget-object v3, p0, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;->e:Lcom/twitter/model/moments/viewmodels/MomentPage;

    invoke-static {v3}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/twitter/model/moments/viewmodels/MomentPage;

    invoke-virtual {v3}, Lcom/twitter/model/moments/viewmodels/MomentPage;->k()Z

    move-result v3

    iget-object v4, p0, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;->e:Lcom/twitter/model/moments/viewmodels/MomentPage;

    .line 217
    invoke-virtual {v4}, Lcom/twitter/model/moments/viewmodels/MomentPage;->g()Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Lcom/twitter/util/object/g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    .line 218
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;->b(Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackType;Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackSentiment;I)Ljava/lang/String;

    move-result-object v8

    move-object v9, p4

    invoke-direct/range {v0 .. v9}, Lbqd;-><init>(Landroid/content/Context;Lcom/twitter/library/client/Session;ZJJLjava/lang/String;Ljava/lang/String;)V

    .line 220
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v10, v0, v1, v2}, Lcom/twitter/library/client/bd;->a(Lcom/twitter/library/service/x;ILcom/twitter/library/client/bf;)Z

    .line 221
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;->d:Z

    .line 222
    return-void

    .line 214
    :cond_0
    const-wide/16 v6, 0x0

    goto :goto_0
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackType;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;->a(Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackType;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackType;Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackSentiment;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;->a(Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackType;Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackSentiment;)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackType;Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackSentiment;I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;->a(Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackType;Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackSentiment;I)V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackType;Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackSentiment;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;->a(Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackType;Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackSentiment;ILjava/lang/String;)V

    return-void
.end method

.method private static b(Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackType;Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackSentiment;)I
    .locals 1
    .annotation build Landroid/support/annotation/StringRes;
    .end annotation

    .prologue
    .line 168
    sget-object v0, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackType;->a:Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackType;

    if-ne p0, v0, :cond_1

    .line 169
    sget-object v0, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackSentiment;->a:Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackSentiment;

    if-ne p1, v0, :cond_0

    .line 170
    const v0, 0x7f0a0ac1

    .line 178
    :goto_0
    return v0

    .line 172
    :cond_0
    const v0, 0x7f0a0ac0

    goto :goto_0

    .line 175
    :cond_1
    sget-object v0, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackSentiment;->a:Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackSentiment;

    if-ne p1, v0, :cond_2

    .line 176
    const v0, 0x7f0a0ac3

    goto :goto_0

    .line 178
    :cond_2
    const v0, 0x7f0a0ac2

    goto :goto_0
.end method

.method private b(Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackType;Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackSentiment;I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;->a:Landroid/content/Context;

    .line 205
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {p1, p2}, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;->c(Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackType;Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackSentiment;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 206
    aget-object v0, v0, p3

    return-object v0
.end method

.method private static c(Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackType;Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackSentiment;)I
    .locals 1
    .annotation build Landroid/support/annotation/ArrayRes;
    .end annotation

    .prologue
    .line 186
    sget-object v0, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackType;->a:Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackType;

    if-ne p0, v0, :cond_1

    .line 187
    sget-object v0, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackSentiment;->a:Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackSentiment;

    if-ne p1, v0, :cond_0

    .line 188
    const v0, 0x7f0b001e

    .line 196
    :goto_0
    return v0

    .line 190
    :cond_0
    const v0, 0x7f0b001c

    goto :goto_0

    .line 193
    :cond_1
    sget-object v0, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackSentiment;->a:Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController$FeedbackSentiment;

    if-ne p1, v0, :cond_2

    .line 194
    const v0, 0x7f0b001f

    goto :goto_0

    .line 196
    :cond_2
    const v0, 0x7f0b001d

    goto :goto_0
.end method

.method private d()V
    .locals 3

    .prologue
    .line 96
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;->a:Landroid/content/Context;

    .line 97
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b001a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/twitter/android/moments/ui/fullscreen/cq;

    invoke-direct {v2, p0}, Lcom/twitter/android/moments/ui/fullscreen/cq;-><init>(Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0a0abe

    .line 108
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 109
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 110
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 111
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;->c:Lcom/twitter/android/moments/ui/fullscreen/gt;

    if-eqz v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;->c:Lcom/twitter/android/moments/ui/fullscreen/gt;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/gt;->a()V

    .line 78
    :cond_0
    return-void
.end method

.method public b()V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;->c:Lcom/twitter/android/moments/ui/fullscreen/gt;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;->c:Lcom/twitter/android/moments/ui/fullscreen/gt;

    invoke-virtual {v0}, Lcom/twitter/android/moments/ui/fullscreen/gt;->b()V

    .line 84
    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;->b:Lcom/twitter/moments/core/ui/widget/capsule/b;

    invoke-interface {v0}, Lcom/twitter/moments/core/ui/widget/capsule/b;->c()Lcom/twitter/model/moments/viewmodels/MomentPage;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;->e:Lcom/twitter/model/moments/viewmodels/MomentPage;

    .line 89
    iget-object v0, p0, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;->e:Lcom/twitter/model/moments/viewmodels/MomentPage;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;->d:Z

    if-nez v0, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;->d()V

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;->d:Z

    .line 93
    :cond_0
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 226
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/moments/ui/fullscreen/InternalFeedbackDialogsController;->d:Z

    .line 227
    return-void
.end method
