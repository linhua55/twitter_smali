.class public final Lcom/twitter/android/widget/NotificationSettingsDialogFragment;
.super Lcom/twitter/app/common/base/BaseDialogFragment;
.source "Twttr"


# instance fields
.field private a:Ljava/lang/String;

.field private c:Lcom/twitter/app/common/account/a;

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Landroid/content/Context;

.field private g:Lcom/twitter/library/scribe/TwitterScribeItem;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/twitter/app/common/base/BaseDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic a(Lcom/twitter/android/widget/NotificationSettingsDialogFragment;)I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/twitter/android/widget/NotificationSettingsDialogFragment;->d:I

    return v0
.end method

.method static synthetic a(Lcom/twitter/android/widget/NotificationSettingsDialogFragment;I)I
    .locals 0

    .prologue
    .line 27
    iput p1, p0, Lcom/twitter/android/widget/NotificationSettingsDialogFragment;->d:I

    return p1
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/twitter/android/widget/NotificationSettingsDialogFragment;
    .locals 2

    .prologue
    .line 50
    new-instance v0, Lcom/twitter/android/widget/da;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/twitter/android/widget/da;-><init>(I)V

    .line 51
    invoke-virtual {v0, p0}, Lcom/twitter/android/widget/da;->a(Ljava/lang/String;)Lcom/twitter/android/widget/cz;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/da;

    .line 52
    invoke-virtual {v0, p1}, Lcom/twitter/android/widget/da;->b(Ljava/lang/String;)Lcom/twitter/android/widget/cz;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/da;

    .line 53
    invoke-virtual {v0, p2}, Lcom/twitter/android/widget/da;->c(Ljava/lang/String;)Lcom/twitter/android/widget/cz;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/da;

    .line 54
    invoke-virtual {v0, p3}, Lcom/twitter/android/widget/da;->d(Ljava/lang/String;)Lcom/twitter/android/widget/cz;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/da;

    .line 55
    invoke-virtual {v0}, Lcom/twitter/android/widget/da;->i()Lcom/twitter/app/common/base/BaseDialogFragment;

    move-result-object v0

    check-cast v0, Lcom/twitter/android/widget/NotificationSettingsDialogFragment;

    .line 50
    return-object v0
.end method

.method static synthetic a(Lcom/twitter/android/widget/NotificationSettingsDialogFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0, p1}, Lcom/twitter/android/widget/NotificationSettingsDialogFragment;->b(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/twitter/android/widget/NotificationSettingsDialogFragment;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/twitter/android/widget/NotificationSettingsDialogFragment;->f:Landroid/content/Context;

    return-object v0
.end method

.method private b(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 171
    invoke-static {}, Lcom/twitter/library/client/bk;->a()Lcom/twitter/library/client/bk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/bk;->c()Lcom/twitter/library/client/Session;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twitter/library/client/Session;->g()J

    move-result-wide v0

    .line 172
    new-instance v2, Lcom/twitter/library/scribe/TwitterScribeLog;

    invoke-direct {v2, v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;-><init>(J)V

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v3, "search"

    aput-object v3, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v3, "universal_top"

    aput-object v3, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v3, ""

    aput-object v3, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v3, "recommendation"

    aput-object v3, v0, v1

    const/4 v1, 0x4

    aput-object p1, v0, v1

    .line 173
    invoke-virtual {v2, v0}, Lcom/twitter/library/scribe/TwitterScribeLog;->b([Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/widget/NotificationSettingsDialogFragment;->g:Lcom/twitter/library/scribe/TwitterScribeItem;

    .line 174
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->a(Lcom/twitter/library/scribe/ScribeItem;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    check-cast v0, Lcom/twitter/library/scribe/TwitterScribeLog;

    iget-object v1, p0, Lcom/twitter/android/widget/NotificationSettingsDialogFragment;->i:Ljava/lang/String;

    .line 175
    invoke-virtual {v0, v1}, Lcom/twitter/library/scribe/TwitterScribeLog;->g(Ljava/lang/String;)Lcom/twitter/library/scribe/ScribeLog;

    move-result-object v0

    .line 172
    invoke-static {v0}, Lbjf;->a(Lbjh;)V

    .line 176
    return-void
.end method


# virtual methods
.method public a()Lcom/twitter/android/widget/cy;
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/twitter/android/widget/NotificationSettingsDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/twitter/android/widget/cy;->a(Landroid/os/Bundle;)Lcom/twitter/android/widget/cy;

    move-result-object v0

    return-object v0
.end method

.method public synthetic g()Lcom/twitter/app/common/base/c;
    .locals 1

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/twitter/android/widget/NotificationSettingsDialogFragment;->a()Lcom/twitter/android/widget/cy;

    move-result-object v0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/BaseDialogFragment;->onAttach(Landroid/app/Activity;)V

    .line 61
    iput-object p1, p0, Lcom/twitter/android/widget/NotificationSettingsDialogFragment;->f:Landroid/content/Context;

    .line 62
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 163
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/BaseDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 164
    const-string/jumbo v0, "cancel"

    invoke-direct {p0, v0}, Lcom/twitter/android/widget/NotificationSettingsDialogFragment;->b(Ljava/lang/String;)V

    .line 165
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/BaseDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 68
    sget-object v1, Lcom/twitter/library/platform/notifications/PushRegistration;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v3, -0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 89
    if-nez p1, :cond_1

    .line 90
    invoke-virtual {p0}, Lcom/twitter/android/widget/NotificationSettingsDialogFragment;->a()Lcom/twitter/android/widget/cy;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Lcom/twitter/android/widget/cy;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/widget/NotificationSettingsDialogFragment;->a:Ljava/lang/String;

    .line 92
    invoke-virtual {v0}, Lcom/twitter/android/widget/cy;->b()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/widget/NotificationSettingsDialogFragment;->e:Ljava/lang/String;

    .line 93
    invoke-virtual {v0}, Lcom/twitter/android/widget/cy;->c()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/twitter/android/widget/NotificationSettingsDialogFragment;->h:Ljava/lang/String;

    .line 94
    invoke-virtual {v0}, Lcom/twitter/android/widget/cy;->d()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/NotificationSettingsDialogFragment;->i:Ljava/lang/String;

    .line 101
    :goto_0
    new-instance v0, Lcom/twitter/library/scribe/TwitterScribeItem;

    invoke-direct {v0}, Lcom/twitter/library/scribe/TwitterScribeItem;-><init>()V

    iput-object v0, p0, Lcom/twitter/android/widget/NotificationSettingsDialogFragment;->g:Lcom/twitter/library/scribe/TwitterScribeItem;

    .line 102
    iget-object v0, p0, Lcom/twitter/android/widget/NotificationSettingsDialogFragment;->f:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    .line 107
    iget-object v0, p0, Lcom/twitter/android/widget/NotificationSettingsDialogFragment;->a:Ljava/lang/String;

    invoke-static {v0}, Lcom/twitter/library/util/b;->b(Ljava/lang/String;)Lcom/twitter/app/common/account/a;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/NotificationSettingsDialogFragment;->c:Lcom/twitter/app/common/account/a;

    .line 108
    iget-object v0, p0, Lcom/twitter/android/widget/NotificationSettingsDialogFragment;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    move v0, v3

    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 120
    const-string/jumbo v1, ""

    .line 121
    const-string/jumbo v0, ""

    .line 127
    :goto_2
    iget-object v2, p0, Lcom/twitter/android/widget/NotificationSettingsDialogFragment;->c:Lcom/twitter/app/common/account/a;

    invoke-virtual {v2}, Lcom/twitter/app/common/account/a;->b()Lcom/twitter/app/common/account/UserIdentifier;

    move-result-object v2

    invoke-virtual {v2}, Lcom/twitter/app/common/account/UserIdentifier;->b()J

    move-result-wide v4

    .line 128
    iget-object v2, p0, Lcom/twitter/android/widget/NotificationSettingsDialogFragment;->f:Landroid/content/Context;

    invoke-static {v2, v4, v5}, Lcom/twitter/library/platform/notifications/PushRegistration;->a(Landroid/content/Context;J)I

    move-result v2

    iput v2, p0, Lcom/twitter/android/widget/NotificationSettingsDialogFragment;->d:I

    .line 129
    iget v2, p0, Lcom/twitter/android/widget/NotificationSettingsDialogFragment;->d:I

    and-int/2addr v2, v3

    if-ne v3, v2, :cond_2

    move v6, v7

    .line 131
    :goto_3
    if-eqz v6, :cond_3

    .line 132
    const v2, 0x7f0a05e3

    .line 136
    :goto_4
    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 137
    new-array v10, v12, [Ljava/lang/String;

    const v11, 0x7f0a06be

    new-array v12, v12, [Ljava/lang/Object;

    aput-object v2, v12, v8

    aput-object v1, v12, v7

    .line 138
    invoke-virtual {v9, v11, v12}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v8

    const v1, 0x7f0a00fd

    .line 139
    invoke-virtual {v9, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v10, v7

    .line 142
    new-instance v7, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/twitter/android/widget/NotificationSettingsDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v7, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 143
    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/twitter/android/widget/cx;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/twitter/android/widget/cx;-><init>(Lcom/twitter/android/widget/NotificationSettingsDialogFragment;IJZ)V

    .line 144
    invoke-virtual {v0, v10, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 158
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0

    .line 96
    :cond_1
    const-string/jumbo v0, "NotificationSettingsDialogFragment_account_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/NotificationSettingsDialogFragment;->a:Ljava/lang/String;

    .line 97
    const-string/jumbo v0, "collapse_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/NotificationSettingsDialogFragment;->e:Ljava/lang/String;

    .line 98
    const-string/jumbo v0, "event_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/NotificationSettingsDialogFragment;->h:Ljava/lang/String;

    .line 99
    const-string/jumbo v0, "query"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/widget/NotificationSettingsDialogFragment;->i:Ljava/lang/String;

    goto/16 :goto_0

    .line 108
    :pswitch_0
    const-string/jumbo v1, "event_parrot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v8

    goto/16 :goto_1

    .line 110
    :pswitch_1
    const v0, 0x7f0a0591

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 111
    const v0, 0x7f0a06d4

    invoke-virtual {v9, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 112
    const/high16 v3, 0x20000

    .line 113
    iget-object v2, p0, Lcom/twitter/android/widget/NotificationSettingsDialogFragment;->g:Lcom/twitter/library/scribe/TwitterScribeItem;

    iget-object v4, p0, Lcom/twitter/android/widget/NotificationSettingsDialogFragment;->h:Ljava/lang/String;

    iput-object v4, v2, Lcom/twitter/library/scribe/TwitterScribeItem;->b:Ljava/lang/String;

    .line 114
    iget-object v2, p0, Lcom/twitter/android/widget/NotificationSettingsDialogFragment;->g:Lcom/twitter/library/scribe/TwitterScribeItem;

    iget-object v4, p0, Lcom/twitter/android/widget/NotificationSettingsDialogFragment;->i:Ljava/lang/String;

    iput-object v4, v2, Lcom/twitter/library/scribe/TwitterScribeItem;->w:Ljava/lang/String;

    .line 115
    iget-object v2, p0, Lcom/twitter/android/widget/NotificationSettingsDialogFragment;->g:Lcom/twitter/library/scribe/TwitterScribeItem;

    const/16 v4, 0xc

    iput v4, v2, Lcom/twitter/library/scribe/TwitterScribeItem;->c:I

    .line 116
    iget-object v2, p0, Lcom/twitter/android/widget/NotificationSettingsDialogFragment;->g:Lcom/twitter/library/scribe/TwitterScribeItem;

    const-string/jumbo v4, "event_parrot"

    iput-object v4, v2, Lcom/twitter/library/scribe/TwitterScribeItem;->x:Ljava/lang/String;

    goto/16 :goto_2

    :cond_2
    move v6, v8

    .line 129
    goto/16 :goto_3

    .line 134
    :cond_3
    const v2, 0x7f0a05e6

    goto/16 :goto_4

    .line 108
    nop

    :pswitch_data_0
    .packed-switch 0x390582db
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0, p1}, Lcom/twitter/app/common/base/BaseDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 74
    const-string/jumbo v0, "NotificationSettingsDialogFragment_account_name"

    iget-object v1, p0, Lcom/twitter/android/widget/NotificationSettingsDialogFragment;->a:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    const-string/jumbo v0, "collapse_key"

    iget-object v1, p0, Lcom/twitter/android/widget/NotificationSettingsDialogFragment;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string/jumbo v0, "event_id"

    iget-object v1, p0, Lcom/twitter/android/widget/NotificationSettingsDialogFragment;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    const-string/jumbo v0, "query"

    iget-object v1, p0, Lcom/twitter/android/widget/NotificationSettingsDialogFragment;->i:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    return-void
.end method
