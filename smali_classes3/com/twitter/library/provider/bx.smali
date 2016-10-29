.class public final Lcom/twitter/library/provider/bx;
.super Ljava/lang/Object;
.source "Twttr"


# static fields
.field public static final A:I

.field public static final B:I

.field public static final C:I

.field public static final D:I

.field public static final E:I

.field public static final F:I

.field public static final G:I

.field public static final H:I

.field public static final I:I

.field public static final J:I

.field public static final K:[Ljava/lang/String;

.field private static final L:Landroid/net/Uri;

.field public static final a:Landroid/net/Uri;

.field public static final b:I

.field public static final c:I

.field public static final d:I

.field public static final e:I

.field public static final f:I

.field public static final g:I

.field public static final h:I

.field public static final i:I

.field public static final j:I

.field public static final k:I

.field public static final l:I

.field public static final m:I

.field public static final n:I

.field public static final o:I

.field public static final p:I

.field public static final q:I

.field public static final r:I

.field public static final s:I

.field public static final t:I

.field public static final u:I

.field public static final v:I

.field public static final w:I

.field public static final x:I

.field public static final y:I

.field public static final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/twitter/library/provider/cn;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "moments_pivot_guide"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/library/provider/bx;->a:Landroid/net/Uri;

    .line 115
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    sput v0, Lcom/twitter/library/provider/bx;->b:I

    .line 116
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/twitter/library/provider/bx;->c:I

    .line 117
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x2

    sput v0, Lcom/twitter/library/provider/bx;->d:I

    .line 118
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x3

    sput v0, Lcom/twitter/library/provider/bx;->e:I

    .line 119
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    sput v0, Lcom/twitter/library/provider/bx;->f:I

    .line 120
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x5

    sput v0, Lcom/twitter/library/provider/bx;->g:I

    .line 121
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x6

    sput v0, Lcom/twitter/library/provider/bx;->h:I

    .line 122
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x7

    sput v0, Lcom/twitter/library/provider/bx;->i:I

    .line 123
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x8

    sput v0, Lcom/twitter/library/provider/bx;->j:I

    .line 124
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x9

    sput v0, Lcom/twitter/library/provider/bx;->k:I

    .line 125
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0xa

    sput v0, Lcom/twitter/library/provider/bx;->l:I

    .line 126
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0xb

    sput v0, Lcom/twitter/library/provider/bx;->m:I

    .line 127
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0xc

    sput v0, Lcom/twitter/library/provider/bx;->n:I

    .line 128
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0xd

    sput v0, Lcom/twitter/library/provider/bx;->o:I

    .line 129
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0xe

    sput v0, Lcom/twitter/library/provider/bx;->p:I

    .line 130
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0xf

    sput v0, Lcom/twitter/library/provider/bx;->q:I

    .line 131
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x10

    sput v0, Lcom/twitter/library/provider/bx;->r:I

    .line 132
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x11

    sput v0, Lcom/twitter/library/provider/bx;->s:I

    .line 133
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x12

    sput v0, Lcom/twitter/library/provider/bx;->t:I

    .line 134
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x13

    sput v0, Lcom/twitter/library/provider/bx;->u:I

    .line 135
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x14

    sput v0, Lcom/twitter/library/provider/bx;->v:I

    .line 136
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x15

    sput v0, Lcom/twitter/library/provider/bx;->w:I

    .line 137
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x16

    sput v0, Lcom/twitter/library/provider/bx;->x:I

    .line 138
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x17

    sput v0, Lcom/twitter/library/provider/bx;->y:I

    .line 139
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x18

    sput v0, Lcom/twitter/library/provider/bx;->z:I

    .line 140
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x19

    sput v0, Lcom/twitter/library/provider/bx;->A:I

    .line 141
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1a

    sput v0, Lcom/twitter/library/provider/bx;->B:I

    .line 142
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1b

    sput v0, Lcom/twitter/library/provider/bx;->C:I

    .line 143
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1c

    sput v0, Lcom/twitter/library/provider/bx;->D:I

    .line 144
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1d

    sput v0, Lcom/twitter/library/provider/bx;->E:I

    .line 145
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1e

    sput v0, Lcom/twitter/library/provider/bx;->F:I

    .line 146
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1f

    sput v0, Lcom/twitter/library/provider/bx;->G:I

    .line 147
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x20

    sput v0, Lcom/twitter/library/provider/bx;->H:I

    .line 148
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x21

    sput v0, Lcom/twitter/library/provider/bx;->I:I

    .line 149
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x22

    sput v0, Lcom/twitter/library/provider/bx;->J:I

    .line 154
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, 0x23

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/twitter/library/provider/bx;->K:[Ljava/lang/String;

    .line 155
    sget-object v0, Lcho;->a:[Ljava/lang/String;

    sget-object v1, Lcom/twitter/library/provider/bx;->K:[Ljava/lang/String;

    sget-object v2, Lcho;->a:[Ljava/lang/String;

    array-length v2, v2

    invoke-static {v0, v3, v1, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 156
    sget-object v0, Lcom/twitter/library/provider/bx;->K:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/bx;->b:I

    const-string/jumbo v2, "moments_title"

    aput-object v2, v0, v1

    .line 157
    sget-object v0, Lcom/twitter/library/provider/bx;->K:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/bx;->c:I

    const-string/jumbo v2, "moments_can_subscribe"

    aput-object v2, v0, v1

    .line 158
    sget-object v0, Lcom/twitter/library/provider/bx;->K:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/bx;->d:I

    const-string/jumbo v2, "moments_is_live"

    aput-object v2, v0, v1

    .line 159
    sget-object v0, Lcom/twitter/library/provider/bx;->K:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/bx;->e:I

    const-string/jumbo v2, "moments_is_sensitive"

    aput-object v2, v0, v1

    .line 160
    sget-object v0, Lcom/twitter/library/provider/bx;->K:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/bx;->f:I

    const-string/jumbo v2, "moments_subcategory_string"

    aput-object v2, v0, v1

    .line 161
    sget-object v0, Lcom/twitter/library/provider/bx;->K:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/bx;->g:I

    const-string/jumbo v2, "moments_subcategory_favicon_url"

    aput-object v2, v0, v1

    .line 163
    sget-object v0, Lcom/twitter/library/provider/bx;->K:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/bx;->h:I

    const-string/jumbo v2, "moments_time_string"

    aput-object v2, v0, v1

    .line 164
    sget-object v0, Lcom/twitter/library/provider/bx;->K:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/bx;->i:I

    const-string/jumbo v2, "moments_duration_string"

    aput-object v2, v0, v1

    .line 165
    sget-object v0, Lcom/twitter/library/provider/bx;->K:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/bx;->j:I

    const-string/jumbo v2, "moments_is_subscribed"

    aput-object v2, v0, v1

    .line 166
    sget-object v0, Lcom/twitter/library/provider/bx;->K:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/bx;->k:I

    const-string/jumbo v2, "moments_description"

    aput-object v2, v0, v1

    .line 167
    sget-object v0, Lcom/twitter/library/provider/bx;->K:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/bx;->l:I

    const-string/jumbo v2, "moments_moment_url"

    aput-object v2, v0, v1

    .line 168
    sget-object v0, Lcom/twitter/library/provider/bx;->K:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/bx;->m:I

    const-string/jumbo v2, "moments_num_subscribers"

    aput-object v2, v0, v1

    .line 169
    sget-object v0, Lcom/twitter/library/provider/bx;->K:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/bx;->n:I

    const-string/jumbo v2, "moments_author_info"

    aput-object v2, v0, v1

    .line 170
    sget-object v0, Lcom/twitter/library/provider/bx;->K:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/bx;->o:I

    const-string/jumbo v2, "moments_promoted_content"

    aput-object v2, v0, v1

    .line 171
    sget-object v0, Lcom/twitter/library/provider/bx;->K:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/bx;->p:I

    const-string/jumbo v2, "moments_event_id"

    aput-object v2, v0, v1

    .line 172
    sget-object v0, Lcom/twitter/library/provider/bx;->K:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/bx;->q:I

    const-string/jumbo v2, "moments_event_type"

    aput-object v2, v0, v1

    .line 173
    sget-object v0, Lcom/twitter/library/provider/bx;->K:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/bx;->r:I

    const-string/jumbo v2, "moment_sports_events_value"

    aput-object v2, v0, v1

    .line 174
    sget-object v0, Lcom/twitter/library/provider/bx;->K:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/bx;->s:I

    const-string/jumbo v2, "moments_guide_moment_id"

    aput-object v2, v0, v1

    .line 175
    sget-object v0, Lcom/twitter/library/provider/bx;->K:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/bx;->t:I

    const-string/jumbo v2, "moments_guide_section_id"

    aput-object v2, v0, v1

    .line 176
    sget-object v0, Lcom/twitter/library/provider/bx;->K:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/bx;->u:I

    const-string/jumbo v2, "moments_guide_tweet_id"

    aput-object v2, v0, v1

    .line 177
    sget-object v0, Lcom/twitter/library/provider/bx;->K:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/bx;->v:I

    const-string/jumbo v2, "moments_guide_crop_data"

    aput-object v2, v0, v1

    .line 178
    sget-object v0, Lcom/twitter/library/provider/bx;->K:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/bx;->w:I

    const-string/jumbo v2, "moments_guide_media_id"

    aput-object v2, v0, v1

    .line 179
    sget-object v0, Lcom/twitter/library/provider/bx;->K:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/bx;->x:I

    const-string/jumbo v2, "moments_guide_media_url"

    aput-object v2, v0, v1

    .line 180
    sget-object v0, Lcom/twitter/library/provider/bx;->K:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/bx;->y:I

    const-string/jumbo v2, "moments_guide_media_size"

    aput-object v2, v0, v1

    .line 181
    sget-object v0, Lcom/twitter/library/provider/bx;->K:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/bx;->z:I

    const-string/jumbo v2, "moments_guide_display_type"

    aput-object v2, v0, v1

    .line 182
    sget-object v0, Lcom/twitter/library/provider/bx;->K:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/bx;->A:I

    const-string/jumbo v2, "moments_guide_context_string"

    aput-object v2, v0, v1

    .line 183
    sget-object v0, Lcom/twitter/library/provider/bx;->K:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/bx;->B:I

    const-string/jumbo v2, "moments_guide_context_scribe_info"

    aput-object v2, v0, v1

    .line 184
    sget-object v0, Lcom/twitter/library/provider/bx;->K:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/bx;->C:I

    const-string/jumbo v2, "moments_guide_cta"

    aput-object v2, v0, v1

    .line 185
    sget-object v0, Lcom/twitter/library/provider/bx;->K:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/bx;->D:I

    const-string/jumbo v2, "moments_guide_user_states_is_updated"

    aput-object v2, v0, v1

    .line 187
    sget-object v0, Lcom/twitter/library/provider/bx;->K:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/bx;->E:I

    const-string/jumbo v2, "moments_guide_user_states_is_read"

    aput-object v2, v0, v1

    .line 189
    sget-object v0, Lcom/twitter/library/provider/bx;->K:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/bx;->F:I

    const-string/jumbo v2, "moments_sections_section_title"

    aput-object v2, v0, v1

    .line 190
    sget-object v0, Lcom/twitter/library/provider/bx;->K:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/bx;->G:I

    const-string/jumbo v2, "moments_sections_section_type"

    aput-object v2, v0, v1

    .line 191
    sget-object v0, Lcom/twitter/library/provider/bx;->K:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/bx;->H:I

    const-string/jumbo v2, "moments_sections_section_category_id"

    aput-object v2, v0, v1

    .line 193
    sget-object v0, Lcom/twitter/library/provider/bx;->K:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/bx;->I:I

    const-string/jumbo v2, "moments_sections_section_footer"

    aput-object v2, v0, v1

    .line 194
    sget-object v0, Lcom/twitter/library/provider/bx;->K:[Ljava/lang/String;

    sget v1, Lcom/twitter/library/provider/bx;->J:I

    const-string/jumbo v2, "moments_sections_section_footer_deeplink"

    aput-object v2, v0, v1

    .line 198
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/twitter/library/provider/cn;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "moments_sectioned_guide"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/twitter/library/provider/bx;->L:Landroid/net/Uri;

    return-void
.end method

.method public static a(ILjava/lang/String;)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 207
    sget-object v0, Lcom/twitter/library/provider/bx;->L:Landroid/net/Uri;

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static a(J)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 202
    sget-object v0, Lcom/twitter/library/provider/bx;->a:Landroid/net/Uri;

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
