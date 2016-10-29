.class public Lcom/twitter/android/media/camera/VideoTooltipManager;
.super Ljava/lang/Object;
.source "Twttr"

# interfaces
.implements Lcom/twitter/ui/widget/af;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/SharedPreferences;

.field private final c:Landroid/support/v4/app/FragmentManager;

.field private final d:I

.field private e:Z

.field private final f:I

.field private g:Lcom/twitter/ui/widget/Tooltip;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/FragmentManager;I)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/twitter/android/media/camera/VideoTooltipManager;->a:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lcom/twitter/android/media/camera/VideoTooltipManager;->c:Landroid/support/v4/app/FragmentManager;

    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/twitter/android/media/camera/VideoTooltipManager;->f:I

    .line 46
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/media/camera/VideoTooltipManager;->b:Landroid/content/SharedPreferences;

    .line 47
    iput p3, p0, Lcom/twitter/android/media/camera/VideoTooltipManager;->d:I

    .line 48
    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 3

    .prologue
    .line 51
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 52
    const-string/jumbo v1, "video_recorder_education_tips"

    sget-object v2, Lcom/twitter/android/media/camera/VideoTooltipManager$CameraTooltip;->a:Lcom/twitter/android/media/camera/VideoTooltipManager$CameraTooltip;

    iget v2, v2, Lcom/twitter/android/media/camera/VideoTooltipManager$CameraTooltip;->tipValue:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    sget-object v1, Lcom/twitter/android/media/camera/VideoTooltipManager$CameraTooltip;->f:Lcom/twitter/android/media/camera/VideoTooltipManager$CameraTooltip;

    iget v1, v1, Lcom/twitter/android/media/camera/VideoTooltipManager$CameraTooltip;->tipValue:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(I)V
    .locals 3

    .prologue
    const v1, 0x7f1301cc

    .line 102
    .line 103
    iget v0, p0, Lcom/twitter/android/media/camera/VideoTooltipManager;->f:I

    if-eq v0, v1, :cond_0

    .line 104
    iget-object v0, p0, Lcom/twitter/android/media/camera/VideoTooltipManager;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/twitter/ui/widget/Tooltip;->a(Landroid/content/Context;I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    const v1, 0x7f1301b9

    .line 105
    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/ad;->d(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    const v1, 0x7f0d042a

    .line 106
    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/ad;->b(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    .line 107
    invoke-virtual {v0, p1}, Lcom/twitter/ui/widget/ad;->a(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    const/4 v1, 0x0

    .line 108
    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/ad;->c(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    .line 109
    invoke-virtual {v0, p0}, Lcom/twitter/ui/widget/ad;->a(Lcom/twitter/ui/widget/af;)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/media/camera/VideoTooltipManager;->c:Landroid/support/v4/app/FragmentManager;

    const-string/jumbo v2, "shutter_tag"

    .line 110
    invoke-virtual {v0, v1, v2}, Lcom/twitter/ui/widget/ad;->a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)Lcom/twitter/ui/widget/Tooltip;

    .line 112
    :cond_0
    return-void
.end method

.method private c(I)V
    .locals 3

    .prologue
    const v1, 0x7f1303a9

    .line 115
    .line 116
    iget v0, p0, Lcom/twitter/android/media/camera/VideoTooltipManager;->f:I

    if-eq v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/twitter/android/media/camera/VideoTooltipManager;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/twitter/ui/widget/Tooltip;->a(Landroid/content/Context;I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    const v1, 0x7f1301b9

    .line 118
    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/ad;->d(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    const v1, 0x7f0d042c

    .line 119
    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/ad;->b(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    .line 120
    invoke-virtual {v0, p1}, Lcom/twitter/ui/widget/ad;->a(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    const/4 v1, 0x0

    .line 121
    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/ad;->c(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    .line 122
    invoke-virtual {v0, p0}, Lcom/twitter/ui/widget/ad;->a(Lcom/twitter/ui/widget/af;)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/media/camera/VideoTooltipManager;->c:Landroid/support/v4/app/FragmentManager;

    const-string/jumbo v2, "segment_tag"

    .line 123
    invoke-virtual {v0, v1, v2}, Lcom/twitter/ui/widget/ad;->a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)Lcom/twitter/ui/widget/Tooltip;

    .line 125
    :cond_0
    return-void
.end method

.method private d(I)V
    .locals 3

    .prologue
    const v1, 0x7f130152

    .line 128
    .line 129
    iget v0, p0, Lcom/twitter/android/media/camera/VideoTooltipManager;->f:I

    if-eq v0, v1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/twitter/android/media/camera/VideoTooltipManager;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/twitter/ui/widget/Tooltip;->a(Landroid/content/Context;I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    const v1, 0x7f1301b9

    .line 131
    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/ad;->d(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    const v1, 0x7f0d042a

    .line 132
    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/ad;->b(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    .line 133
    invoke-virtual {v0, p1}, Lcom/twitter/ui/widget/ad;->a(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    const/4 v1, 0x1

    .line 134
    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/ad;->c(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    .line 135
    invoke-virtual {v0, p0}, Lcom/twitter/ui/widget/ad;->a(Lcom/twitter/ui/widget/af;)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/media/camera/VideoTooltipManager;->c:Landroid/support/v4/app/FragmentManager;

    const-string/jumbo v2, "done_tag"

    .line 136
    invoke-virtual {v0, v1, v2}, Lcom/twitter/ui/widget/ad;->a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)Lcom/twitter/ui/widget/Tooltip;

    .line 138
    :cond_0
    return-void
.end method

.method private e(I)V
    .locals 3

    .prologue
    const v1, 0x7f1301c9

    .line 141
    .line 142
    iget v0, p0, Lcom/twitter/android/media/camera/VideoTooltipManager;->f:I

    if-eq v0, v1, :cond_0

    .line 143
    iget-object v0, p0, Lcom/twitter/android/media/camera/VideoTooltipManager;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/twitter/ui/widget/Tooltip;->a(Landroid/content/Context;I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    const v1, 0x7f1301b9

    .line 144
    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/ad;->d(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    const v1, 0x7f0d042d

    .line 145
    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/ad;->b(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    .line 146
    invoke-virtual {v0, p1}, Lcom/twitter/ui/widget/ad;->a(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    const/4 v1, 0x0

    .line 147
    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/ad;->c(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    .line 148
    invoke-virtual {v0, p0}, Lcom/twitter/ui/widget/ad;->a(Lcom/twitter/ui/widget/af;)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/media/camera/VideoTooltipManager;->c:Landroid/support/v4/app/FragmentManager;

    const-string/jumbo v2, "switch_mode_tag"

    .line 149
    invoke-virtual {v0, v1, v2}, Lcom/twitter/ui/widget/ad;->a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)Lcom/twitter/ui/widget/Tooltip;

    .line 151
    :cond_0
    return-void
.end method

.method private f(I)V
    .locals 3

    .prologue
    const v1, 0x7f130388

    .line 154
    .line 155
    iget v0, p0, Lcom/twitter/android/media/camera/VideoTooltipManager;->f:I

    if-eq v0, v1, :cond_0

    .line 156
    iget-object v0, p0, Lcom/twitter/android/media/camera/VideoTooltipManager;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/twitter/ui/widget/Tooltip;->a(Landroid/content/Context;I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    const v1, 0x7f130142

    .line 157
    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/ad;->d(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    const v1, 0x7f0d042d

    .line 158
    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/ad;->b(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    .line 159
    invoke-virtual {v0, p1}, Lcom/twitter/ui/widget/ad;->a(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    const/4 v1, 0x0

    .line 160
    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/ad;->c(I)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    .line 161
    invoke-virtual {v0, p0}, Lcom/twitter/ui/widget/ad;->a(Lcom/twitter/ui/widget/af;)Lcom/twitter/ui/widget/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/twitter/android/media/camera/VideoTooltipManager;->c:Landroid/support/v4/app/FragmentManager;

    const-string/jumbo v2, "import_gripper_tag"

    .line 162
    invoke-virtual {v0, v1, v2}, Lcom/twitter/ui/widget/ad;->a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)Lcom/twitter/ui/widget/Tooltip;

    .line 164
    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/twitter/android/media/camera/VideoTooltipManager;->g:Lcom/twitter/ui/widget/Tooltip;

    if-eqz v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/twitter/android/media/camera/VideoTooltipManager;->g:Lcom/twitter/ui/widget/Tooltip;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/twitter/ui/widget/Tooltip;->a(Z)V

    .line 184
    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 167
    iget-object v0, p0, Lcom/twitter/android/media/camera/VideoTooltipManager;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-le p1, v3, :cond_0

    const v0, 0x7f0a098a

    :goto_0
    new-array v2, v3, [Ljava/lang/Object;

    .line 169
    invoke-static {v3, p1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 167
    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 170
    iget-object v1, p0, Lcom/twitter/android/media/camera/VideoTooltipManager;->a:Landroid/content/Context;

    const v2, 0x7f130388

    invoke-static {v1, v2}, Lcom/twitter/ui/widget/Tooltip;->a(Landroid/content/Context;I)Lcom/twitter/ui/widget/ad;

    move-result-object v1

    const v2, 0x7f130142

    .line 171
    invoke-virtual {v1, v2}, Lcom/twitter/ui/widget/ad;->d(I)Lcom/twitter/ui/widget/ad;

    move-result-object v1

    const v2, 0x7f0d042b

    .line 172
    invoke-virtual {v1, v2}, Lcom/twitter/ui/widget/ad;->b(I)Lcom/twitter/ui/widget/ad;

    move-result-object v1

    .line 173
    invoke-virtual {v1, v0}, Lcom/twitter/ui/widget/ad;->a(Ljava/lang/CharSequence;)Lcom/twitter/ui/widget/ad;

    move-result-object v1

    .line 174
    invoke-virtual {v1, v4}, Lcom/twitter/ui/widget/ad;->c(I)Lcom/twitter/ui/widget/ad;

    move-result-object v1

    .line 175
    invoke-virtual {v1, p0}, Lcom/twitter/ui/widget/ad;->a(Lcom/twitter/ui/widget/af;)Lcom/twitter/ui/widget/ad;

    move-result-object v1

    iget-object v2, p0, Lcom/twitter/android/media/camera/VideoTooltipManager;->c:Landroid/support/v4/app/FragmentManager;

    const-string/jumbo v3, "import_gripper_duration_tag"

    .line 176
    invoke-virtual {v1, v2, v3, v4}, Lcom/twitter/ui/widget/ad;->a(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;Z)Lcom/twitter/ui/widget/Tooltip;

    move-result-object v1

    .line 177
    invoke-virtual {v1, v0}, Lcom/twitter/ui/widget/Tooltip;->a(Ljava/lang/CharSequence;)Lcom/twitter/ui/widget/Tooltip;

    move-result-object v0

    iput-object v0, p0, Lcom/twitter/android/media/camera/VideoTooltipManager;->g:Lcom/twitter/ui/widget/Tooltip;

    .line 178
    return-void

    .line 167
    :cond_0
    const v0, 0x7f0a0989

    goto :goto_0
.end method

.method public a(Lcom/twitter/android/media/camera/VideoTooltipManager$CameraTooltip;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 57
    iget v1, p1, Lcom/twitter/android/media/camera/VideoTooltipManager$CameraTooltip;->tipValue:I

    .line 58
    iget-object v0, p0, Lcom/twitter/android/media/camera/VideoTooltipManager;->b:Landroid/content/SharedPreferences;

    const-string/jumbo v2, "video_recorder_education_tips"

    sget-object v3, Lcom/twitter/android/media/camera/VideoTooltipManager$CameraTooltip;->a:Lcom/twitter/android/media/camera/VideoTooltipManager$CameraTooltip;

    iget v3, v3, Lcom/twitter/android/media/camera/VideoTooltipManager$CameraTooltip;->tipValue:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 60
    iget-boolean v0, p0, Lcom/twitter/android/media/camera/VideoTooltipManager;->e:Z

    if-nez v0, :cond_0

    and-int v0, v2, v1

    if-eqz v0, :cond_1

    .line 99
    :cond_0
    :goto_0
    return-void

    .line 63
    :cond_1
    sget-object v0, Lcom/twitter/android/media/camera/bd;->a:[I

    invoke-virtual {p1}, Lcom/twitter/android/media/camera/VideoTooltipManager$CameraTooltip;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 91
    const v0, 0x7f0a00f9

    invoke-direct {p0, v0}, Lcom/twitter/android/media/camera/VideoTooltipManager;->b(I)V

    .line 95
    :goto_1
    iput-boolean v4, p0, Lcom/twitter/android/media/camera/VideoTooltipManager;->e:Z

    .line 96
    if-eqz v1, :cond_0

    .line 97
    iget-object v0, p0, Lcom/twitter/android/media/camera/VideoTooltipManager;->b:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v3, "video_recorder_education_tips"

    or-int/2addr v1, v2

    invoke-interface {v0, v3, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_0

    .line 65
    :pswitch_0
    const v0, 0x7f0a00f6

    invoke-direct {p0, v0}, Lcom/twitter/android/media/camera/VideoTooltipManager;->b(I)V

    goto :goto_1

    .line 69
    :pswitch_1
    const v0, 0x7f0a00f8

    invoke-direct {p0, v0}, Lcom/twitter/android/media/camera/VideoTooltipManager;->c(I)V

    goto :goto_1

    .line 73
    :pswitch_2
    const v0, 0x7f0a00f5

    invoke-direct {p0, v0}, Lcom/twitter/android/media/camera/VideoTooltipManager;->b(I)V

    goto :goto_1

    .line 77
    :pswitch_3
    iget v0, p0, Lcom/twitter/android/media/camera/VideoTooltipManager;->d:I

    if-ne v0, v4, :cond_2

    const v0, 0x7f0a098f

    :goto_2
    invoke-direct {p0, v0}, Lcom/twitter/android/media/camera/VideoTooltipManager;->d(I)V

    goto :goto_1

    :cond_2
    const v0, 0x7f0a098e

    goto :goto_2

    .line 83
    :pswitch_4
    const v0, 0x7f0a00fb

    invoke-direct {p0, v0}, Lcom/twitter/android/media/camera/VideoTooltipManager;->e(I)V

    goto :goto_1

    .line 87
    :pswitch_5
    const v0, 0x7f0a098b

    invoke-direct {p0, v0}, Lcom/twitter/android/media/camera/VideoTooltipManager;->f(I)V

    goto :goto_1

    .line 63
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public a(Lcom/twitter/ui/widget/Tooltip;I)V
    .locals 1

    .prologue
    .line 188
    packed-switch p2, :pswitch_data_0

    .line 201
    :goto_0
    return-void

    .line 190
    :pswitch_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/twitter/ui/widget/Tooltip;->a(Z)V

    goto :goto_0

    .line 194
    :pswitch_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/twitter/android/media/camera/VideoTooltipManager;->e:Z

    goto :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
